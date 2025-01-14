module sign_deal(
	input				clk,
	input				rstn,
	input				start, 
	input				stop, 
	input				rst, 
	input		[3:0]	igbt_rst,
	input				recv_para,
	input				Lockn,
	input				rcvd,
	input				bypass,
	input				tr1, 
	input				tr2, 
	input				tr3, 
	input				tr4,
	input				ov, 
	input				uv, 
	input				db,
	input				TEM, 
    
	output		[15:0]	state,
	output				fault,
	output				fault1, 
	output				fault2, 
	output				fault3, 
	output				fault4, 
	output				call_fault,
	output				ov_fault, 
	output				uv_fault, 
	output				TEM_fault
	);

    parameter PERIOD = 16'd40000;
	
reg		[15:0]	call_count1;
reg		[ 3:0]	call_count2;

reg				connect;
reg				ready;

wire			db_fault;
	
reg		[3:0]rcvd_dly;	
always@(posedge clk)
	rcvd_dly <= {rcvd_dly[2:0], rcvd};
	
always@(posedge clk)
    if(rst)
        ready <= 1'b0;
    else if(recv_para || start)
        ready <= 1'b1;
	else
        ready <= ready;

always@(posedge clk)
    if(ready) begin
        if(rcvd_dly[3] != rcvd_dly[2])
            call_count1 <= 16'h0;
        else if(call_count1 < 16'd19200)
            call_count1 <= call_count1 + 1'b1;
        else
            call_count1 <= 16'd19200;
	end else
		call_count1 <= 16'h0;
	
reg	[16:0]	t_data;
always@(posedge clk or negedge rstn)
	if(!rstn)
		t_data <= 17'h0;
	else if(t_data < (PERIOD * 2))
		t_data <= t_data + 1'b1;
	else
		t_data <= 17'h0;
    
always@(posedge clk)
	if(ready) begin
		if (!Lockn)
			connect <= 1'b1;
		else if(recv_para)
			connect <= 1'b1;
		else if(t_data == PERIOD) begin
			connect <= 1'b0;
			if(connect)
				call_count2 <= 4'h0;
			else if(call_count2 < 4'b0100)
				call_count2 <= call_count2 + 1'b1;
			else
				call_count2 <= 4'b0100;
		end
	end else
		call_count2 <= 4'h0;

	
reg duan1;
reg duan2;
always@(posedge clk)
	if(rst)
		duan1 <= 0;
	else if(call_count1 >= 16'd19200)
		duan1 <= 1;
	else
		duan1 <= duan1;

always@(posedge clk)
	if(rst)
		duan2 <= 0;
	else if(call_count2 >= 4'b0100)
		duan2 <= 1;
	else
		duan2 <= duan2;
		
assign	call_fault = duan1 || duan2;  

assign state =	{	fault1,	fault2,	fault3,	fault4,	ov_fault,	uv_fault,	TEM_fault,	db_fault,
					duan1,	duan2,	1'b0,	bypass,	start,		stop,		(~Lockn),	call_fault};

				
error #(4'd4) t1 (clk, rstn && !igbt_rst[0], !tr1, 1'b1, fault1);
error #(4'd4) t2 (clk, rstn && !igbt_rst[1], !tr2, 1'b1, fault2);
error #(4'd4) t3 (clk, rstn && !igbt_rst[2], !tr3, 1'b1, fault3);
error #(4'd4) t4 (clk, rstn && !igbt_rst[3], !tr4, 1'b1, fault4);
    

error #(4'd4) ov_f		(clk, rstn && !rst, ov,  1'b1, ov_fault);
error #(4'd4) db_f		(clk, rstn && !rst, db,  1'b1, db_fault);
error #(4'd4) TEM_f	(clk, rstn && !rst, TEM, 1'b1, TEM_fault);

alarm uv_f(clk, !rst, uv, uv_fault);
    
assign fault = (call_fault || ov_fault || TEM_fault || fault1 || fault2 || fault3 || fault4);

	
endmodule

module alarm(
    input			clk,
    input			rstn,
    input			din,
    output			dout
	);
    
reg [3:0]count;
always@(posedge clk or negedge rstn)
    if(!rstn)
        count <= 4'b0;
    else if(din) begin
        if(count < 4'b1111)
            count <= count + 1'b1;
    end else begin
        if(count > 4'h0)
            count <= count - 1'b1;
    end

assign dout = (count == 4'b1111)? 1'b1: 1'b0;

endmodule


module error(
	input			clk,
	input			rstn,
	input			in1,
	input			in2,
	output			out	
	);
    

parameter CNT = 4'd5;

reg [3:0]count;
    

reg [3:0]in1_dly;
reg [3:0]in2_dly;
always@(posedge clk)
begin
	in1_dly <= {in1_dly[2:0],in1};
	in2_dly <= {in2_dly[2:0],in2};
end

wire	and_12 = in1_dly[2] & in2_dly[2];
	
always@(posedge clk or negedge rstn)
    if(!rstn)
        count <= 4'h0;
	else if(out)
        count <= count;
	else if(and_12) begin
		count <= (count < CNT)? (count + 1'b1) : CNT;
	end else
		count <= 4'h0;

assign	out = (count == CNT);

endmodule
