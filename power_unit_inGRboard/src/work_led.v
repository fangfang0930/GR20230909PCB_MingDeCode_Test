module work_led (
							clk		,
							rst_n		,
						   	time_1us	,
							work_out	
							);
input clk;
input rst_n;
input time_1us;
output work_out;
reg [1:0]time_1us_syn;
always@(posedge clk) time_1us_syn<={time_1us_syn[0],time_1us};	
reg work_out;
reg [9:0]cnt_1ms;
reg [8:0]cnt_500ms;

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	cnt_1ms<=10'd0;
	else if(cnt_1ms==10'd1000)
	cnt_1ms<=10'd0;
	else if(time_1us_syn==2'b01)
	cnt_1ms<=cnt_1ms+1'b1;
end
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	begin 
	cnt_500ms<=9'd0;
	work_out<=1'b0;
	end 
	else if(cnt_500ms==9'd500)
	begin 
	cnt_500ms<=9'd0;
	work_out<=~work_out;
	end 
	else if(cnt_1ms==10'd1000)
	cnt_500ms<=cnt_500ms+1'b1;
end	
endmodule 