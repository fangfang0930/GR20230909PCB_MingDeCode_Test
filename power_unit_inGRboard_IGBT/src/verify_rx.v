 
 module verify_rx(
							clk,
							rst_n,
							time_1us,
							rx_data,//输出数据
							end_flag,
							reset_unit,
							rx_data_syn,//输入数据
							fiber_verify_err,
							verify_flag_out//每次校验的状态输出
							);
parameter DATA_BITS_SIZES=5;//
input  clk;
input  rst_n;
input  time_1us;
input  [DATA_BITS_SIZES-1:0]rx_data_syn;
output reg [3:0]rx_data;//根据通信协议下发的指令有效位是4位
input  end_flag;
output fiber_verify_err;
input  reset_unit;
output verify_flag_out;


reg [3:0] verify_err_nums;
//reg [3:0] delay_err_cnt;
reg fiber_verify_err;
wire verify_flag=((rx_data_syn[4]^rx_data_syn[3]^rx_data_syn[2]^rx_data_syn[1])==rx_data_syn[0])?1'b1:1'b0;//校验和正确则认为校验正确
wire verify_flag_out = (verify_flag&&end_flag);
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	rx_data<=0;
	else if(verify_flag&&end_flag)
	rx_data<=rx_data_syn[4:1];//去掉校验位只保留数据位
end 
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	verify_err_nums<=0;
	else if(reset_unit)
	verify_err_nums<=0;
	else if(verify_flag&&end_flag)//只是清计数器而已，如果故障位已经为1，不会改变故障位的状态，Erik
	verify_err_nums<=0;
	else if(verify_flag==0&&end_flag&&verify_err_nums<4'd4)//校验错误
	verify_err_nums<=verify_err_nums+1'b1;
end 
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	fiber_verify_err<=1'b0;
	else if(reset_unit)
	fiber_verify_err<=1'b0;
	else if(verify_err_nums>=3)//检测校验错误次数超过3次就开始报故障,Erik
	fiber_verify_err<=1'b1;
end 
endmodule 