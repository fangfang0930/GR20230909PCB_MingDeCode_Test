module mux12(
					clk,
					rst_n,
					start,
					ain,
					bin,
					yout,
					done
		);
		
input clk;		
input rst_n;	
input start; 	//
input[11:0] ain;	//
input[11:0] bin;	//
output[11:0]yout;
output done;		//

reg[11:0] yout;
reg[15:0] areg;	//
reg[15:0] breg;	//
reg[31:0] yout_r;	//
wire[31:0] yout1;	//
reg done_r;
reg[4:0] i;		//
reg start_calc;

always @(posedge clk or negedge rst_n)
begin 
	if(!rst_n) 
		start_calc <= 1'b0;
	else if(start)
		start_calc <= 1'b1;
	else if(done_r)
		start_calc <= 1'b0;
end 

//------------------------------------------------
//
always @(posedge clk or negedge rst_n)
begin 
	if(!rst_n) i <= 5'd0;
	else if(start_calc && i < 5'd17) i <= i+1'b1; 
	else if(!start_calc) i <= 5'd0;
end 
//------------------------------------------------
//
always @(posedge clk or negedge rst_n)
begin 
	if(!rst_n) 
	done_r <= 1'b0;
	else if(i == 5'd16) 
	begin 
	done_r <= 1'b1;		//
	yout<=yout_r[21:10];//
	end 
	else if(done_r) 
	done_r <= 1'b0;		//
end 
assign done = done_r;

//------------------------------------------------
//
always @(posedge clk or negedge rst_n) 
begin
	if(!rst_n) begin 
			areg <= 16'd0;
			breg <= 16'd0;
			yout_r <= 32'd0;
		end
	else if(start_calc) begin		//
			if(i == 5'd0) begin	//
					areg <= {4'd0,ain};
					breg <= {4'd0,bin};
				end
			else if(i > 5'd0 && i < 5'd16) begin
					if(areg[i-1]) yout_r = {1'b0,yout1[30:15]+breg,yout_r[14:1]};	//
					else yout_r <= yout_r>>1;	//
				end
			else if(i == 5'd16 && areg[15]) yout_r[31:16] <= yout_r[31:16]+breg;	//
		end
end
assign yout1 = yout_r;

endmodule

