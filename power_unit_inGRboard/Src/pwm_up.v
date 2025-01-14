module pwm_up(
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
	input		[11:0]	volt,
	input		[12:0]	t_data,
	input		[15:0]	fre_data,
	input		[19:0]	rect_data,
	input				rect_over,
    
	output				sent,
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

parameter	VER = 16'h3011;

	wire	[15:0]state;
	wire	clk1x_en;
	wire	fault_en, fre_en, volt_en, state_en, rect_en;
	
sign_deal sign_deal(
	.clk				(clk				),  
    .rstn				(rstn				),
	.start				(start				), 
	.stop				(stop				), 
	.rst				(rst				), 
	.igbt_rst			(igbt_rst			),
	.recv_para			(recv_para			),
	.Lockn				(Lockn				), 
	.rcvd				(rcvd				),
	.bypass				(bypass				),  
	.tr1				(tr1				), 
	.tr2				(tr2				), 
	.tr3				(tr3				), 
	.tr4				(tr4				),
	.ov					(ov					), 
	.uv					(uv					), 
	.db					(db					), 
	.TEM				(TEM				), 
	.state				(state				),
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

up_sign	#(VER)	up_sign(            
    .clk				(clk				),     
    .rstn				(rstn				),
    .fault				(fault				),
    .rect_over			(rect_over			),
    .rect_data			(rect_data			),
    .volt				(volt				),
    .state				(state				),
	.fre_data			(fre_data			),
    .t_data				(t_data				),
    .txd				(sent				)
	);
	
endmodule
