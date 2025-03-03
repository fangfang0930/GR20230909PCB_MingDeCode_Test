 
 module fiber_rx (
							clk					,
							rst_n				,
							start_stop			,//启动停止
							time_1us			,//1us 时间定时
							igbt_control		,
                            Bypcon				,//旁路接触器合闸信号，高有效；
							reset_unit			,//复位故障控制信号
							fiber_verify_err 	,//光纤通信校验错误
							fiber_delay_err  	,//光纤断线故障
							COMM_R            //输入光纤信号
						);
input clk         	  ;
input rst_n				  ;
output start_stop		  ;//启动停止
input time_1us         ;
output [1:0]igbt_control;
output Bypcon;//旁路接触器合闸信号，高有效；
output reset_unit		  ;//复位故障控制信号
output fiber_verify_err;//光纤通信校验错误
output fiber_delay_err ;//光纤断线故障
input COMM_R          ;//输入光纤信号

parameter DATA_BITS_SIZE=5;//包含数据和校验位，不包含起始位和7位高电平位
parameter DIV_4MHZ=9;
parameter CMD_NUMS=3;//接收连续控制命令的次数 防止误动作 只针对复位和启动操作
parameter RESET_CNT = 6'd39;//1us的复位时间
parameter Byp_CNT = 16'd10000;//10ms的复位时间
parameter HighTime = 7'd69;//检测7个高电平时间
reg start_stop;
//reg reset_unit;
reg [6:0]HighCnt;
reg receive_flag;
reg [DATA_BITS_SIZE-1:0]rx_data_syn;
wire[3:0]rx_data;//synthesis keep//根据通信协议下发的指令有效位是4位
reg [3:0]divide_cnt;//0~3
reg [4:0]receive_code_cnt;//1~5
reg [5:0]cnt_reset_err;
reg [15:0]cnt_byp;
wire read_flag;//数据对中读取标志
wire end_flag;
wire verify_flag_out;//synthesis keep
assign read_flag=(divide_cnt==(DIV_4MHZ>>1))?1'b1:1'b0;//在中间点，确认信号值，Erik
assign end_flag =(receive_code_cnt==(DATA_BITS_SIZE)&&divide_cnt==DIV_4MHZ)?1'b1:1'b0;
assign igbt_control = rx_data[3:2];
reg [1:0]rx_syn,cnt_high_err;
reg high_err,high_err_flag;

////信号同步,Erik
reg [1:0]time_1us_syn;
always@(posedge clk) time_1us_syn<={time_1us_syn[0],time_1us};	

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	rx_syn<=0;
	else 
	rx_syn<={rx_syn[0],COMM_R};
end 
/*
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	receive_flag<=0;
	else if(rx_syn==2'b10)//检测到0电平//这样简单检测到0电平就是认为是起始位，实际应用中会不会很容易把正常数据当成是起始位？后续测试需要注意。Erik
	receive_flag<=1;
	else if(receive_code_cnt==0&&read_flag&&rx_syn[1]==1)//确认起始位，数据的中间点电平不为0，则判断为干扰，重新等待下降沿
	receive_flag<=0;
	else if(end_flag)
	receive_flag<=0;
end 
*/
////还是修改成先检测到7个高电平的数据位,再检测起始位,Erik
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		HighCnt <= 0;
		receive_flag <= 0;
	end
	else if(HighCnt >= HighTime)  //必须检测到连续的7个位的高电平,否则一直等待
	begin
		if(rx_syn==2'b10)//检测到0电平
			receive_flag<=1;
		else if(receive_code_cnt==0&&read_flag&&rx_syn[1]==1)//确认起始位，数据的中间点电平不为0，则判断为干扰，重新开始
		begin
			HighCnt <= 0;
			receive_flag<=0;
		end
		else if(end_flag)
		begin
			HighCnt <= 0;
			receive_flag<=0;
		end
     end
	else
    begin
		if(rx_syn[1] == 1'b1)
        begin
        	HighCnt <= HighCnt + 1'b1;
        end
        else
        begin
        	HighCnt <= 0;
        end
    end
end


always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	divide_cnt<=0;
	else if(receive_flag==0)
	divide_cnt<=0;
	else if(divide_cnt==DIV_4MHZ)
	divide_cnt<=0;
	else 
	divide_cnt<=divide_cnt+1'b1;
end 

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	receive_code_cnt<=0;
	else if(receive_flag==0)
	receive_code_cnt<=0;
	else if(divide_cnt==DIV_4MHZ)//接收数据计数寄存器
	receive_code_cnt<=receive_code_cnt+1'b1;
end 
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	rx_data_syn<=0;
	else if(receive_code_cnt>0&&read_flag)//1~5为数据位
	rx_data_syn<={rx_data_syn[DATA_BITS_SIZE-2:0],rx_syn[1]}; //通讯协议写的时候把低位写在前面了,因此这里跟通讯协议相同,要注意,Erik
end 
 

verify_rx verify_rx(
							.clk(clk),
							.rst_n(rst_n),
							.time_1us(time_1us),
							.rx_data(rx_data),//输出数据
							.end_flag(end_flag),
							.reset_unit(reset_unit),
							.rx_data_syn(rx_data_syn),//输入数据							
							.fiber_verify_err(fiber_verify_err),
							.verify_flag_out(verify_flag_out)
							);
fiber_delay_rx fiber_delay_rx(
							.clk(clk),
							.rst_n(rst_n),
							.time_1us(time_1us),//
							.reset_unit(reset_unit),
							.fiber_delay_err(fiber_delay_err),
							.COMM_R(rx_syn[1])
							);
reg [5:0]rst_cnt_nums; //
reg [5:0]strat_cnt_nums; //
reg [5:0]byp_cnt_nums;
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	begin 
		start_stop<=0;
		//reset_unit<=0;
	end 
	else 
		if(strat_cnt_nums>=CMD_NUMS)//启动
		begin 
			start_stop<=1;
			//reset_unit<=0;
		end 
		else if(rst_cnt_nums>=CMD_NUMS)//接收到复位指令
		begin 
			start_stop<=0;	
			//reset_unit<=1;
		end
		else if(byp_cnt_nums>=CMD_NUMS)//接收到旁路指令
		begin 
			start_stop<=0;	
			//reset_unit<=1;
		end
		else if(rx_data[1:0]==2'b00)
		begin 
			start_stop<=0;
			//reset_unit<=0;
		end 				
end
//"对复位指令进行防抖,实际测试发现连续10个会有问题，此处用连续60个"----原清华的备注,目前程序修改成3次通讯确认（每次通讯正确，verify_flag_out会有13次上升沿）,后续留意Erik

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	rst_cnt_nums<=6'd0;
	else if(rx_data[1:0]!=2'b11)
	rst_cnt_nums<=6'd0;
	else if(verify_flag_out&&rst_cnt_nums<6'd40)
	rst_cnt_nums<=rst_cnt_nums+1'b1;
end
 
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	strat_cnt_nums<=6'd0;
	else if(rx_data[1:0]!=2'b01)
	strat_cnt_nums<=6'd0;
	else if(verify_flag_out&&strat_cnt_nums<6'd40)
	strat_cnt_nums<=strat_cnt_nums+1'b1;
end 

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	byp_cnt_nums<=6'd0;
	else if(rx_data[1:0]!=2'b10)
	byp_cnt_nums<=6'd0;
	else if(verify_flag_out&&strat_cnt_nums<6'd40)
	byp_cnt_nums<=byp_cnt_nums+1'b1;
end 
//防止复位指令接收后出现断线的情况
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	cnt_reset_err<=0;
	else if(verify_flag_out&&rst_cnt_nums>CMD_NUMS)
	cnt_reset_err<=RESET_CNT;  //确认故障复位后，故障复位信号持续1us，Erik
	else if(cnt_reset_err>0)
	cnt_reset_err<=cnt_reset_err-1'b1;
end 

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	cnt_byp <= 0;
	else if(verify_flag_out&&byp_cnt_nums>CMD_NUMS)
	cnt_byp <= Byp_CNT;  //确认闭合旁路后，旁路信号持续10ms，Erik
	else if((cnt_byp >0)&&(time_1us_syn == 2'b01))
	cnt_byp <= cnt_byp - 1'b1;
end 

assign reset_unit = ( cnt_reset_err > 0)?1'b1:1'b0;
assign Bypcon = (cnt_byp > 0)?1'b1:1'b0;

endmodule 