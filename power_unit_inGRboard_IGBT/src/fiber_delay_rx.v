 
 module fiber_delay_rx(
							clk,
							rst_n,
							time_1us,
							reset_unit,
							fiber_delay_err,
							COMM_R
							);
input clk;
input rst_n;
input time_1us;
input reset_unit;
output fiber_delay_err;
input COMM_R;
reg [4:0]delay_err_cnt;
reg fiber_delay_err;
	//判断光纤延时
reg [1:0]time_1us_syn;
always@(posedge clk) time_1us_syn<={time_1us_syn[0],time_1us};	
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	delay_err_cnt<=0;
	else if(reset_unit)
	delay_err_cnt<=0;
	else if(COMM_R==0)
	delay_err_cnt<=0;
	else if(delay_err_cnt<25&&time_1us_syn==2'b10)
	delay_err_cnt<=delay_err_cnt+1'b1;
end 	
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	fiber_delay_err<=1'b0;
	else if(reset_unit)
	fiber_delay_err<=1'b0;
	else if(delay_err_cnt>=20)//20us断线延时
	fiber_delay_err<=1'b1;
end 
		
 endmodule 