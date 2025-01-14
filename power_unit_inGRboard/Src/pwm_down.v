module pwm_down(
	input				clk,
    input				rstn,
    input				rcvd,
    input				fault,
	input				fault1,
	input				fault2,	
	input				fault3,	
	input				fault4,
    
    output				start, 
	output				stop, 
	output				rst, 
	output		[3:0]	igbt_rst,
	output				Lockn,
	output				recv_para,
	output		[15:0]	fre_data,
    output				K_1, 
    output				K_2, 
    output				K_3,
    output				K_4,
	output Bypass_cmd,
	output		[12:0]	tri_200us
	);
    

wire	[15:0]	pose, nege;
wire			recv_done;
wire	[23:0]	recv_data;	
wire			rcv_clk;
wire			rcv_data;
wire	[1:0]	reg_igbt;
wire			chkflt;
wire			chkflt_over;

cdr cdr(
	.clk				(clk					),//40mhz
	.rstn				(rstn					),
	.din				(!rcvd					),
	.rcv_clk			(rcv_clk				),//clk_out 10mhz
	.rcv_data			(rcv_data				)
	);
	
des	des(
	.clk				(clk					),
	.rstn				(rstn					),
	.rx_clk				(rcv_clk				),
	.rx_data			(rcv_data				),
	.recv_data			(recv_data				),
	.recv_done			(recv_done				)
	);

down_deal down_deal(
	.clk				(clk					),
	.rstn				(rstn					),
	.recv_done			(recv_done				),
	.recv_data			(recv_data				),
	.fault				(fault					),   
	.fault1				(fault1					),
	.fault2				(fault2					),	
	.fault3				(fault3					),	
	.fault4				(fault4					),	 
	.chkflt_over		(chkflt_over			),	 
    .chkflt				(chkflt					),
	.start				(start					),		 
	.stop				(stop					), 
	.rst				(rst					), 
	.Lockn				(Lockn					),
	.fre_data			(fre_data				),
	.recv_para			(recv_para				), 
	.Bypass_cmd         (Bypass_cmd             ),

	.tri_200us			(tri_200us				),
	.reg_igbt			(reg_igbt				)
	);
	
dead dead(
    .clk				(clk					),
	.rstn				(rstn					),        
    .start				(start					),
    .reg_igbt			(reg_igbt				), 
    .fault				(fault					),
	.fault1				(fault1					),
	.fault2				(fault2					),	
	.fault3				(fault3					),	
	.fault4				(fault4					),	     
    .chkflt				(chkflt					),
	.chkflt_over		(chkflt_over			),	
	.igbt_rst			(igbt_rst				),
    .K_1				(K_1					), 
    .K_2				(K_2					), 
    .K_3				(K_3					), 
    .K_4				(K_4					)
	);
endmodule
