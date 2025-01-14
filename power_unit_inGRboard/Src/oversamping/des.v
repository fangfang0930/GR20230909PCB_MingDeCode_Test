module	des	(
		//common signals
		input				clk,
		input				rstn,
		input				rx_clk,
		input				rx_data,
		
		output	reg	[23:0]	recv_data,
		output	reg			recv_done
		);


//state machine
parameter	S_IDLE	=	'd0;
parameter	S_RECV	=	'd1;
parameter	S_NOP0	=	'd2;
parameter	S_CHCK	=	'd3;

wire crc_bad;
wire [9:0]send_crc;
reg	[1:0]	cur_sta, nxt_sta;
reg	[5:0]	bits_cnt;
reg	[35:0]	rsr;

reg rx_data_dly;
always @ (posedge clk or negedge rstn)
	if (!rstn)
		rx_data_dly <= 1'b0;
	else if(rx_clk)
		rx_data_dly <= rx_data;
	
wire	recv_start	= rx_clk && rx_data_dly && !rx_data;
wire	recv_last	= (bits_cnt == 'd35);

always @ (posedge clk or negedge rstn)
	if (!rstn)
		cur_sta <= 0;
	else
		cur_sta <= nxt_sta;

always @ (*)
begin
	nxt_sta = cur_sta;
	case (cur_sta)
	S_IDLE	:	nxt_sta = recv_start ? S_RECV : S_IDLE;
	S_RECV	:	nxt_sta	= (rx_clk) ? S_NOP0 : S_RECV;
	S_NOP0	:	nxt_sta	= (recv_last) ? S_CHCK : S_RECV;
	S_CHCK	:	nxt_sta	= S_IDLE;
	endcase
end

always @ (posedge clk or negedge rstn)
	if (!rstn)
		bits_cnt <= 0;
	else if (cur_sta == S_IDLE)
		bits_cnt <= 0;
	else if (nxt_sta == S_NOP0)
		bits_cnt <= bits_cnt + 1'b1;

always @ (posedge clk or negedge rstn)
	if (!rstn) begin
		rsr	<= 0;
	end else if (nxt_sta == S_IDLE) begin
		rsr	<= 0;
	end else if (rx_clk) begin
		rsr	<= {rsr[34:0], rx_data};
	end
	
wire recv_over = (bits_cnt == 'd35 && nxt_sta == S_CHCK && !crc_bad && !rsr[0] && !rsr[35])? 1'b1: 1'b0;

always @ (posedge clk or negedge rstn)
	if (!rstn) begin
		recv_done <= 1'b0;
		recv_data <= 24'h0;
	end else if(recv_over) begin
		recv_done <= 1'b1;
		recv_data <= rsr[34:11];
	end else begin
		recv_done <= 1'b0;
		recv_data <= recv_data;
	end
	
assign crc_bad = |send_crc;

crc_10 crc_gene(
	.clk				(clk					),          
	.rstn				(rstn					),       
	.valid				(rx_clk					),
	.indata				(rx_data				),
	.clr				(cur_sta == S_IDLE		),
	.crc_sum			(send_crc				)			//CRC checksum
	);  










endmodule