module down_deal(
	input				clk,
	input				rstn,
	input				recv_done,
	input		[23:0]	recv_data,

    input				chkflt_over,  
	output	reg			chkflt,
    
	input				fault,
	input				fault1,
	input				fault2,	
	input				fault3,	
	input				fault4,
	

	output	reg			start, 
	output	reg			stop, 
	output	reg			rst, 
	output	reg			Lockn,
	output				recv_para,
	output	reg	[15:0]	fre_data,
	output	reg	[ 1:0]	reg_igbt,
	output  reg         Bypass_cmd,
	output	reg [12:0]	tri_200us
	);


parameter	HEAD_LOCK		= {8'hAC, 16'hECEC};
parameter	HEAD_Bypass		= {8'hA8, 16'h37A5};//parameter	HEAD_SYNC		= {8'hA8, 16'h37A5};
parameter	HEAD_DATASYN	= {8'hAA, 16'h37A5};

parameter	HEAD_P0 	= 8'hA1;//控制命令
parameter	HEAD_P1 	= 8'hA2;//开关频率
parameter	HEAD_P2 	= 8'hA9;//调制波数据 //开关指令

reg		[1:0]syn_error;
reg		[15:0]ref_data, cmd_data;
reg		ref_over, cmd_over;


initial
begin
	tri_200us = 13'h0;
end



//封锁
always@(posedge clk or negedge rstn)
	if(!rstn)
		Lockn <= 1'b1;
	else if(rst)
		Lockn <= 1'b1;
	else if(recv_done && (recv_data[23:0] == HEAD_LOCK))
		Lockn <= 1'b0;
	else
		Lockn <= Lockn;
		
//数据更新同步
//parameter TRI_TIMER=13'd1999;//50US 
 parameter TRI_TIMER=13'd7999; //200US

always@(posedge clk)
	if(recv_done && (recv_data[23:0] == HEAD_DATASYN) )
		tri_200us <= 13'h0;
	else if(tri_200us <TRI_TIMER)
		tri_200us <= tri_200us + 1'b1;
	else
		tri_200us <= 13'h0;
		
//开关指令
always@(posedge clk or negedge rstn)
	if(!rstn) begin
		reg_igbt <= 2'b00;
	end else if(rst) begin
		reg_igbt <= 2'b00;
	end else if(recv_done && (recv_data[23:16] == HEAD_P2) && (recv_data[15:8] == recv_data[7:0])) begin
		reg_igbt <= {recv_data[4], recv_data[0]};
    end else begin
		reg_igbt <= reg_igbt;
	end

always@(posedge clk or negedge rstn)
	if(!rstn) begin
		fre_data <= 'h0;
	end else if(recv_done && (recv_data[23:16] == HEAD_P1)) begin
		fre_data <= (recv_data[15:0] == 0)? fre_data: recv_data[15:0];
    end else begin
		fre_data <= fre_data;
    end


always@(posedge clk or negedge rstn)
	if(!rstn) begin
		Bypass_cmd <= 1'b0;
	end else if(recv_done && (recv_data[23:16] == HEAD_Bypass)) begin
		Bypass_cmd <= 1'b1;	
    end else begin
		Bypass_cmd <= Bypass_cmd;
    end

always@(posedge clk or negedge rstn)
	if(!rstn) begin
		cmd_over <= 1'b0;
		cmd_data <= 'h0;
	end else if(recv_done && (recv_data[23:16] == HEAD_P0)) begin
		cmd_over <= 1'b1;
		cmd_data <= recv_data[15:0];
    end else begin
		cmd_over <= 1'b0;
		cmd_data <= cmd_data;
    end
	
wire	cmd_rst		= (cmd_data == 16'h4444);
wire	cmd_start	= (cmd_data == 16'h1111);
wire	cmd_stop	= (cmd_data == 16'h2222);
//wire	cmd_check	= (cmd_data == 16'h8888);
	
//控制命令
always@(posedge clk)
	if(fault || !Lockn)
        start <= 1'b0;
	else if(cmd_over && cmd_stop)
		start <= 1'b0;
	else if(cmd_over && cmd_rst)
		start <= 1'b0;
	else if(cmd_over && cmd_start && !fault && Lockn)
		start <= 1'b1;
	else 
		start <= start;
    
always@(posedge clk)
	if(cmd_over && cmd_stop)
		stop <= 1'b1;
	else if(cmd_over && cmd_start)
		stop <= 1'b0;
	else if(cmd_over && cmd_rst)
		stop <= 1'b0;
	else if(fault || !Lockn)
        stop <= 1'b1;
	else 
		stop <= stop;

wire	igbt_flt	= fault1 || fault2 || fault3 || fault4;




always@(posedge clk)
    if(cmd_over && cmd_rst && !start && !igbt_flt) begin
		rst <= 1'b1;
	end else if(chkflt && chkflt_over)
        rst <= 1'b1;
    else
        rst <= 1'b0;
		
always@(posedge clk)
    if(cmd_over && cmd_rst && !start && igbt_flt)
		chkflt <= 1'b1;
	else if(chkflt_over)
        chkflt <= 1'b0;
	else
		chkflt <= chkflt;
		
		
assign recv_para = (recv_done && 
					(	recv_data[23:0] == HEAD_LOCK || 
						recv_data[23:16] == HEAD_P0 || 
						recv_data[23:16] == HEAD_P2 || 
						recv_data[23:0] == HEAD_DATASYN)
					)? 1'b1: 1'b0;
	
endmodule
