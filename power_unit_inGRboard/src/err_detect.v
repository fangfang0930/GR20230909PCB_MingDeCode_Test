 
 module err_detect(
							clk			,
							rst_n		,
							time_1us	,
                            time_1ms	,
							start_stop	,//启动停止
							reset_unit	,//复位故障控制信号			
							ERR			,
							DCOV		,
							DCUV		,
							SoftDCOV	,//软件过压故障信号,Erik
							SoftDCUV	,//软件欠压故障信号,Erik
							HOT_1		,
							HOT_2		,
							Powerfall	,
							BypPowerErr	,
                            BypCon,//旁路闭合信号，Erik
                            BypOK,
							err_info	,
							err_unit	
							);
input clk			;
input rst_n			;
input time_1us		;
input time_1ms		;
input start_stop	;//启动停止
input reset_unit	;//复位故障控制信号			
input [3:0]ERR		;//IGBT 故障
input DCOV			;//硬件判断直流过压
input DCUV			;//硬件判断直流欠压
input SoftDCOV		;//软件判断直流过压
input SoftDCUV		;//软件判断直流欠压
input HOT_1			;//过温1
input HOT_2			;//过热2
input Powerfall	;//电源故障
input BypPowerErr;//旁路开关储能电源故障,Erik
input BypCon;//旁路闭合信号，Erik
input BypOK;
output [10:0]err_info;//单元信息
output err_unit;	//单元总故障
reg  err_unit;
wire [3:0]igbt_err;
wire udc_over_err;
wire udc_low_err;
wire soft_over_err;
wire soft_low_err;
wire super_hot_err;//synthesis keep
wire high_hot;
wire power_off_err;
wire byppower_err;
reg  [1:0]time_1us_syn;
reg  [1:0]BypCon_syn;//闭合信号寄存器,Erik
reg	 [9:0]Cnt_1ms;
reg  byp_err;
reg  [15:0]ByperrDelay;//旁路接触器故障计时寄存器

parameter CLK_1MS = 999;
//高电平有效的故障防抖检测
err_high_detect err1(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(ERR[0]),
						.signal_out(igbt_err[0]),
						.delay_tims(2)//输入范围为1~16383 
						);
err_high_detect err2(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(ERR[1]),
						.signal_out(igbt_err[1]),
						.delay_tims(2)//输入范围为1~16383 
						);
err_high_detect err3(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(ERR[2]),
						.signal_out(igbt_err[2]),
						.delay_tims(2)//输入范围为1~16383 
						);
err_high_detect err4(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(ERR[3]),
						.signal_out(igbt_err[3]),
						.delay_tims(2)//输入范围为1~16383 
						);
err_high_detect udc_over(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(DCOV),
						.signal_out(udc_over_err),
						.delay_tims(15)///输入范围为1~16383 
						);
err_high_detect udc_low(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(DCUV),
						.signal_out(udc_low_err),
						.delay_tims(15)///输入范围为1~16383 
						);
err_high_detect soft_over(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(SoftDCOV),
						.signal_out(soft_over_err),
						.delay_tims(1000)///输入范围为1~16383 
						);
err_high_detect soft_low(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(SoftDCUV),
						.signal_out(soft_low_err),
						.delay_tims(1000)///输入范围为1~16383 
						);


err_high_detect_unlock hot1(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1ms),
						.reset_unit(reset_unit),
						.signal_in(HOT_1),
						.signal_out(high_hot),
						.delay_tims(100)//输入范围为1~16383 
						);												
err_high_detect hot2(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1ms),
						.reset_unit(reset_unit),
						.signal_in(HOT_2),
						.signal_out(super_hot_err),
						.delay_tims(100)
						);	
err_high_detect powererr(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(Powerfall),
						.signal_out(power_off_err),
						.delay_tims(15)//输入范围为1~16383
						);

err_high_detect byppowererr(
						.clk(clk),
						.rst_n(rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in(BypPowerErr),
						.signal_out(byppower_err),
						.delay_tims(15)//输入范围为1~16383
						);
//旁路接触器闭合故障,合闸指令发出后,50ms内没收到合闸成功信号,则报故障
always@(posedge clk)
begin
	BypCon_syn <= {BypCon_syn[0],BypCon};
	time_1us_syn <= {time_1us_syn[0],time_1us};
end

always@(posedge clk)
begin
	if(!rst_n)
    begin
    	Cnt_1ms <= 0;
		byp_err <= 0;
		ByperrDelay <= 0;
	end
	else
	begin
		if(time_1us_syn == 2'b01)
		begin
			if(Cnt_1ms < CLK_1MS)
			begin
				Cnt_1ms <= Cnt_1ms + 1'b1;
			end
			else
			begin
				Cnt_1ms <= 0;
			end
		end

		if(BypCon_syn == 2'b01)
		begin
			ByperrDelay <= 16'd52;
		end
		else if(reset_unit)
		begin
			ByperrDelay <= 16'b0;
		end
		else if((Cnt_1ms == CLK_1MS)&&(time_1us_syn == 2'b01)&&(ByperrDelay >16'd0)&&(BypOK == 1'b0))
		begin
			ByperrDelay <= ByperrDelay - 1'b1;
		end


		
		if(reset_unit)
		begin
			byp_err <= 0;
		end
		else if((ByperrDelay > 16'd0)&&(ByperrDelay <16'd3)&&(BypOK == 1'b0))
		begin
			byp_err <= 1;
		end
	end
end

//////////////////////////////////////
			

	
assign err_info={byppower_err,power_off_err,igbt_err[3],igbt_err[2],igbt_err[1],igbt_err[0],super_hot_err,high_hot,byp_err,(soft_over_err|udc_over_err),(soft_low_err|udc_low_err)};						

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	err_unit<=0;
	else if(reset_unit)
	err_unit<=0;
	else if((err_info[10:4]>0)||(err_info[2:0]>0))
	err_unit<=1;
end 	
endmodule 