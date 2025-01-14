
`include "define.v"
module top(
	input				clk,
//	input				rstn,
	
	input				tr1, 
	input				tr2, 
	input				tr3, 
	input				tr4,
	
	input				col1, 
	input				col2, 
	input				col3, 
	input				col4,
	
	input				ov, 
	input				uv, 
	input				db,
	input				TEM,
	input				rcvd, 
	output				sent, 
	input				rect_rcvd,
	output				rect_sent,
	
	output				adclk, 
	output				cs_n,
	input				ad_in,	
	
	output				K_1, 
	output				K_2, 
	output				K_3, 
	output				K_4,

	input				bypass_i,
	output				bypass_o,
	
	output		[9:0]	led
	);
	   
//yABC.D
//ABC��ʾ�汾
//D��ʾ��Ԫ������
parameter	VER_Y = 12'h412;

`ifdef UNIT_1 //��Լ�͵�Ԫ
parameter	PF = 1, //���˿�δ��
			PT = 1, //�¿��ߵ�ƽ��Ч,���մ���
			PD = 1; //����˳��δ��
parameter	VER = {VER_Y, 4'h1};
`else
	`ifdef UNIT_2
	parameter	PF = 0, 
				PT = 0, 
				PD = 0; 	
	parameter	VER = {VER_Y, 4'h2};
	`else
		`ifdef UNIT_3 
		parameter	PF = 1, 
					PT = 0, 
					PD = 1; 
		parameter	VER = {VER_Y, 4'h3};
		`else
			`ifdef UNIT_4
			parameter	PF = 0, 
						PT = 1, 
						PD = 1; 
			parameter	VER = {VER_Y, 4'h4};
			`else
				`ifdef UNIT_5
				parameter	PF = 0, 
							PT = 0, 
							PD = 1; 
				parameter	VER = {VER_Y, 4'h5};
				`else
					`ifdef UNIT_6
					parameter	PF = 1, 
								PT = 1, 
								PD = 1; 
					parameter	VER = {VER_Y, 4'h6};
					`else
						`ifdef UNIT_7
						parameter	PF = 1, 
									PT = 1, 
									PD = 1; 
						parameter	VER = {VER_Y, 4'h4};
						`endif
					`endif
				`endif
			`endif
		`endif
	`endif
`endif

wire	rstn = 1;
wire	[3:0]igbt_rst;
wire	[15:0]comp_tri;
wire	fault;
wire	fault1, fault2, fault3, fault4, call_fault;
wire	syn;
wire	start, stop, rst;
wire	recv_para;
wire	Lockn;
wire	[15:0]fre_data;
wire	[11:0]volt;
wire	ov_fault, uv_fault, TEM_fault;
wire	sysrdy;
wire	[12:0]tri_200us;

wire	tem_in;
wire	fout;
wire	K_4r, K_3r, K_2r, K_1r;
wire	tr4in, tr3in, tr2in, tr1in;
//wire	col1in, col2in, col3in, col4in;
wire    Bypass_cmd;

wire	fin			= PF ? rcvd	: rect_rcvd;
assign	sent		= PF ? fout	: 1'b0;
assign	rect_sent	= PF ? 1'b0	: fout;

assign	tem_in		= PT ? TEM	: !TEM;

assign	{K_4, K_3, K_2, K_1}	= PD ? {K_4r, K_3r, K_2r, K_1r}	: {K_3r, K_4r, K_1r, K_2r};

assign	{col4in, col3in, col2in, col1in}	= PD ? {col4, col3, col2, col1}	: {col3, col4, col1, col2};

assign	{tr4in, tr3in, tr2in, tr1in}	= PD ? {tr4, tr3, tr2, tr1}	: {tr3, tr4, tr1, tr2};

	init init(
		.clk				(clk				),
		.rstn				(rstn				),	
		.fault1				(fault1				),
		.fault2				(fault2				),	
		.fault3				(fault3				),	
		.fault4				(fault4				),	
		.ov_fault			(ov_fault			),	
		.uv_fault			(uv_fault			),	
		.TEM_fault			(TEM_fault			),	
		.call_fault			(call_fault			),	
		.start				(start				),	
		.stop				(stop				),	
		.tri_200us			(tri_200us			), 
		.led				(led				),
		.sysrdy				(sysrdy				)
		);
	
	ad ad(
		.clk				(clk				), 
//		.t_data				(tri_200us			), 
		.ad_in				(ad_in				), 
		.adclk				(adclk				), 
		.cs_n				(cs_n				), 
		.volt				(volt				)
		);
	
	pwm_down pwm_down(
		.clk				(clk				), 
		.rstn				(sysrdy				),
		.rcvd				(fin				),
		.fault				(fault				), 
		.fault1				(fault1				),
		.fault2				(fault2				),	
		.fault3				(fault3				),	
		.fault4				(fault4				),	
        .start				(start				), 
		.stop				(stop				), 
		.rst				(rst				), 
		.igbt_rst			(igbt_rst			),
		.Lockn				(Lockn				), 
		.recv_para			(recv_para			), 
		.fre_data			(fre_data			), 
		.K_1				(K_1r				), 
		.K_2				(K_2r				), 
		.K_3				(K_3r				), 
		.K_4				(K_4r				),
		.Bypass_cmd         (Bypass_cmd         )  ,  
		.tri_200us			(tri_200us			)
		);
	
wire bypass;
reg [7:0]dly_cnt; //200us  * 100=20ms
always@(posedge clk or negedge rstn) begin
	if(!rstn)
		dly_cnt <= 7'h0;
	else if(tri_200us==12'd1 && (dly_cnt < 8'd100)  && call_fault)
		dly_cnt <= dly_cnt + 1'b1;
	else
		dly_cnt <= dly_cnt;
end

assign bypass_o =(Bypass_cmd==1  ) || ((call_fault) && (dly_cnt==100)) ;
assign bypass	= ~bypass_i ? 1'b1: 1'b0;//(call_fault & ~bypass_i) ? 1'b1: 1'b0;

	pwm_up	#(VER)	pwm_up(
		.clk				(clk				), 
		.rstn				(sysrdy				),
		.start				(start				),  
		.stop				(stop				),  
		.rst				(rst				),   
		.igbt_rst			(igbt_rst			),
		.recv_para			(recv_para			),  
		.Lockn				(Lockn				),   
		.sent				(fout				),  
		.rcvd				(fin				),  
		.bypass				(bypass				),  
        .tr1				(tr1in				), 
		.tr2				(tr2in				), 
		.tr3				(tr3in				),
		.tr4				(tr4in				), 
		.ov					(ov					), 
		.uv					(uv					), 
		.db					(db					), 
		.TEM				(tem_in				), 
		.volt				(volt				), 
		.fre_data			(fre_data			), 
		.t_data				(tri_200us			), 
		.fault				(fault				), 
		.fault1				(fault1				), 
		.fault2				(fault2				), 
		.fault3				(fault3				), 
		.fault4				(fault4				), 
		.call_fault			(call_fault			),
		.ov_fault			(ov_fault			), 
		.uv_fault			(uv_fault			), 
		.TEM_fault			(TEM_fault			)
		);

		
endmodule
