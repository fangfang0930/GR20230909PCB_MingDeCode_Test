
module div_1us (
							clk,
							rst_n,
						   time_1us,
                           time_1ms	
					);
input clk		;
input rst_n		;
output time_1us;
output time_1ms;	
parameter COUNT_1US=39;
parameter COUNT_1MS=999;

reg [5:0]cnt_time;
reg	[10:0]cnt_time1ms;
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	cnt_time<=0;
	else if(cnt_time==COUNT_1US)
	cnt_time<=0;
	else 
	cnt_time<=cnt_time+1'b1;
end 

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	cnt_time1ms<=0;
	else if(cnt_time1ms==COUNT_1MS)
	cnt_time1ms<=0;
	else if(cnt_time==COUNT_1US) 
	cnt_time1ms<=cnt_time1ms+1'b1;
end 

assign time_1us = (cnt_time>6'd19)?1'b1:1'b0;
assign time_1ms = (cnt_time1ms>11'd499)?1'b1:1'b0; 
endmodule 