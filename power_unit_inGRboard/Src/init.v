module init(
	input				clk,
	input				rstn,
	input				fault1,
	input				fault2,	
	input				fault3,	
	input				fault4,	
	input				ov_fault,	
	input				uv_fault,	
	input				TEM_fault,	
	input				call_fault,	
	input				start,	
	input				stop,	
	input		[12:0]	tri_200us,
	output	reg	[9:0]	led,
	output				sysrdy
	);
 
parameter INIT_TIME = 150_000 / 200;
/*-------------------------单元状态指示灯---------------------------*/
always@(posedge clk)
	if(led_out)
	led  <= ~({fault1,fault2,fault3,fault4,ov_fault,uv_fault,  TEM_fault,call_fault,start, stop });
		//led  <= ~({stop, start, call_fault, TEM_fault, uv_fault, ov_fault, fault4, fault3, fault2, fault1});  //led10-led1  
	else if(temp1 < 10)
		led <= 10'h3F8;
	else if(flash)
		led <= {led[8:0], led[9]};

reg	[13:0]temp1;
initial
begin
	temp1 = 14'h0;
end

always@(posedge clk or negedge rstn)
	if(!rstn)
		temp1 <= 14'h0;
	else if(tri_1us && (temp1 < 14'd15000))
		temp1 <= temp1 + 1'b1;
	else
		temp1 <= temp1;

wire	tri_1us	= (tri_200us == 13'h1);

wire	flash = (tri_1us && (temp1[7:0] == 8'd250))? 1'b1: 1'b0;
wire	led_out = (temp1 == 14'd15000)? 1'b1: 1'b0;
assign	sysrdy = (temp1 > INIT_TIME)? 1'b1: 1'b0;
	

endmodule
