module cdr(
	input				clk,//40mhz
	input				rstn,
	input				din,
	output	reg			rcv_clk,//clk_out 10mhz
	output	reg			rcv_data
	);

parameter	S0  = 5'b00000,
			S1  = 5'b00001,
			S2  = 5'b00011,
			S3  = 5'b00111,
			S4  = 5'b01000,
			S5  = 5'b01001,
			S6  = 5'b01011,
			S7  = 5'b01111,
			S8  = 5'b10000,
			S9  = 5'b10001,
			S10 = 5'b11000,
			S11 = 5'b11001,
			S12 = 5'b10010,
			S13 = 5'b10011,
			S14 = 5'b11010,
			S15 = 5'b11011,
			Sa  = 5'b00010,
			Sb  = 5'b01010;

reg [4:0]sta_last1;
reg [4:0]sta_last2;
reg [4:0]sta_last3;
			
reg [3:0]din_dly;
always@(posedge clk or negedge rstn)
	if(!rstn)
		din_dly <= 4'h0;
	else
		din_dly <= {din_dly[2:0], din};

reg [4:0]sta;
always@(posedge clk or negedge rstn)
	if(!rstn)
		sta <= Sa;
//	else if(clk1x_en_nege)
//		sta <= Sa;
	else begin
		case(sta)
		Sa	: begin
			if(din_dly[3])
				sta <= Sb;
		end
		Sb	: begin
			if(din_dly[3])
				sta <= S0;
		end
		S0	: begin
			if(!din_dly[3])
				sta <= S1;
			else
				sta <= S8;
		end
		S1	: begin
			if(!din_dly[3])
				sta <= S2;
			else
				sta <= S12;
		end
		S2	: begin
			if(!din_dly[3])
				sta <= S3;
			else
				sta <= S4;
		end
		S3	: begin
			if(!din_dly[3])
				sta <= S0;
			else
				sta <= S4;
		end
		
		S4	: begin
			if(din_dly[3])
				sta <= S5;
			else
				sta <= S8;//S10;
		end
		S5	: begin
			if(din_dly[3])
				sta <= S6;
			else
				sta <= S14;
		end
		S6	: begin
			if(din_dly[3])
				sta <= S7;
			else
				sta <= S0;
		end
		S7	: begin
//			if(cnt == 16'd400)
//				sta <= Sa;
//			else 
			if(din_dly[3])
				sta <= S4;
			else
				sta <= S0;
		end
		
		S8	: begin
			if(!din_dly[3])
				sta <= S2;
			else
				sta <= S6;
		end
//		S9	: begin
//			if(!din_dly[3])
//				sta <= S0;
//			else
//				sta <= S7;
//		end
		
//		S10	: begin
//			if(din_dly[3])
//				sta <= S6;
//			else
//				sta <= S11;
//		end
//		S11	: begin
//			if(din_dly[3])
//				sta <= S4;
//			else
//				sta <= S3;
//		end
		
		S12	: begin
			if(!din_dly[3])
				sta <= S3;
			else
				sta <= S13;
		end
		S13	: begin
			if(!din_dly[3])
				sta <= S0;
			else
				sta <= S7;
		end
		
		S14	: begin
			if(din_dly[3])
				sta <= S7;
			else
				sta <= S15;
		end
		S15	: begin
			if(din_dly[3])
				sta <= S4;
			else
				sta <= S3;
		end
		default	: sta <= Sa;
		endcase
	end

always@(*) begin
	rcv_clk = 1'b0;
	rcv_data = 1'b0;
	case(sta)
	Sa	: begin
		rcv_clk = 1'b0;
		rcv_data = 1'b0;
	end
	Sb	: begin
		rcv_clk = 1'b0;
		rcv_data = 1'b0;
	end
	S0	: begin
		if(sta_last3 == S4 && sta_last2 == S5 && sta_last1 == S6) begin
			rcv_clk = 1'b1;
			rcv_data = 1'b1;
		end
	end
	S3	: begin
		rcv_clk = 1'b1;
		rcv_data = 1'b0;
	end
	S4	: begin
		if(sta_last3 == S0 && sta_last2 == S1 && sta_last1 == S2) begin
			rcv_clk = 1'b1;
			rcv_data = 1'b0;
		end
	end
	S7	: begin
		rcv_clk = 1'b1;
		rcv_data = 1'b1;
	end
	default	: begin
		rcv_clk = 1'b0;
		rcv_data = 1'b0;
	end
	endcase
end
	
always@(posedge clk)begin
	sta_last1 <= sta;
	sta_last2 <= sta_last1;
	sta_last3 <= sta_last2;
end

	
endmodule
