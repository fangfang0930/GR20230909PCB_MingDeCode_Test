//���õĶ�Ӧ�ڲ�ͬ���Ƶ����ɶ���ʽ
// N    K    ����d     G(x)����ʽ          G(x)
//31    21   5         x10+x9+x8+x6+x5+x3+1       11101101001

module crc_10(
	input				clk,    
	input				rstn,  
	input				clr,       
	input				valid,
	input				indata,
	output		[9:0]	crc_sum			//CRC checksum
	);          
    
//Registers for CRC
reg [9:0]d_temp;

wire xor1, xor2, xor3, xor4, xor5, xor6, xor7; 

assign xor1 = indata ^ d_temp[9];
assign xor2 = d_temp[0] ^ xor1;
assign xor3 = d_temp[2] ^ xor1;
assign xor4 = d_temp[4] ^ xor1;
assign xor5 = d_temp[5] ^ xor1;
assign xor6 = d_temp[7] ^ xor1;
assign xor7 = d_temp[8] ^ xor1;


always@(posedge clk or negedge rstn)
	if(!rstn)
		d_temp <= 'h0; 
    else if(clr)
		d_temp <= 'h0; 
	else if(valid)begin
		d_temp[9:0] <= {xor7, xor6, d_temp[6], xor5, xor4, d_temp[3], xor3, d_temp[1], xor2, xor1};
	end

assign crc_sum[9:0] = d_temp[9:0];
    
endmodule