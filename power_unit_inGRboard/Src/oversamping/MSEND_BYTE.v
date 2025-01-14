module	MSEND_BYTE	(
    input				clk,
    input				rstn,
    input				unit_en, 
    input				send_start, 
    input		[23:0]	send_data, 
	output				sending,
    output	reg			send_done,
    output				sent
	);

parameter	S_IDLE		= 'd0;
parameter	S_NOP_0		= 'd1;
parameter	S_LD2RSR	= 'd2;
parameter	S_ACC		= 'd3;
parameter	S_SEND		= 'd4;
parameter	S_CHECK		= 'd5;
parameter	S_NOP_1		= 'd6;
parameter	S_DONE		= 'd7;


reg	[5:0]bits_cnt;
wire [ 9:0]send_crc;
reg	[24:0]rsr;
reg dout;
reg	[ 2:0]cur_sta, nxt_sta;

assign sending = (cur_sta == S_IDLE)? 1'b0: 1'b1;

wire	send_data_last	= (bits_cnt == 'd24);
wire	send_last	= (bits_cnt == 'd49);

always @ (posedge clk or negedge rstn)
	if (!rstn)
		cur_sta <= 0;
	else
		cur_sta <= nxt_sta;

always @ (*)
begin
	nxt_sta = cur_sta;
	case (cur_sta)
	S_IDLE		:	nxt_sta = send_start ? S_NOP_0 : S_IDLE;
	S_NOP_0		:	nxt_sta	= S_LD2RSR;
	S_LD2RSR	:	nxt_sta	= S_SEND;
	S_SEND		:	nxt_sta	= S_NOP_1;
	S_NOP_1		:	nxt_sta	= S_CHECK;
	S_CHECK		:	nxt_sta	= send_last ? S_DONE : S_ACC;
	S_ACC		:	nxt_sta	= S_SEND;
	S_DONE		:	nxt_sta	= S_IDLE;
	endcase
end

always @ (posedge clk or negedge rstn)
	if (!rstn)
		bits_cnt <= 0;
	else if (nxt_sta == S_DONE)
		bits_cnt <= 0;
	else if (nxt_sta == S_ACC)
		bits_cnt <= bits_cnt + 1'b1;	
	
always @ (posedge clk or negedge rstn)
	if (!rstn) begin
		rsr		<= 0;
		dout	<= 0;
	end else if (nxt_sta == S_IDLE) begin
		rsr		<= 0;
		dout	<= 1;
	end else if (nxt_sta == S_LD2RSR) begin
		rsr		<= {1'b0, send_data};
		dout	<= 1;
	end else if (nxt_sta == S_SEND) begin
		dout	<= rsr[24];
		if(send_data_last)
			rsr <= {send_crc, 1'b0, 14'h3FFF};
		else
			rsr	<= {rsr[23:0], 1'b0};
	end

always @(*)
begin
	if (cur_sta == S_DONE)
		send_done = 1'b1;
	else
		send_done = 1'b0;
end

assign sent = unit_en? dout: 1'b0;	
	
crc_10 crc_gene(
	.clk				(clk					),          
	.rstn				(rstn					),       
	.valid				(nxt_sta == S_SEND		),
	.indata				(rsr[23]				),
	.clr				(nxt_sta == S_IDLE		),
	.crc_sum			(send_crc				)			//CRC checksum
	);  

	
endmodule
