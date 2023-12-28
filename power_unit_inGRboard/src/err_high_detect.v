 
 module err_high_detect (
						clk			,
						rst_n		,
						time_1us    ,
						reset_unit	,
						signal_in	,
						signal_out  ,
						delay_tims	
						);
input clk			;
input rst_n			;
input time_1us    	;
input reset_unit	;
input signal_in	;
output signal_out	;
input [13:0]delay_tims;
//parameter DELAY_TIMES=2;//延时判断设定值，最大为6us

reg signal_out;
reg [13:0]cnt_delay;
reg [1:0]time_1us_syn;
always@(posedge clk) time_1us_syn<={time_1us_syn[0],time_1us};
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	cnt_delay<=0;
	else if(reset_unit)
	cnt_delay<=0;
	else if(!signal_in)//低电平无效
	cnt_delay<=0;
	else if(signal_in&&time_1us_syn==2'b10&&cnt_delay<14'd16383)
	cnt_delay<=cnt_delay+1'b1;
end 
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	signal_out<=1'b0;
	else if(reset_unit)
	signal_out<=1'b0;
	else if(cnt_delay>=delay_tims)
	signal_out<=1'b1;
end 

endmodule 