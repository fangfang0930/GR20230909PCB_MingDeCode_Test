module dead(
    input				clk,
	input				rstn,       
    input				start,
    input		[ 1:0]	reg_igbt,  
    input				fault,
	input				fault1,
	input				fault2,	
	input				fault3,	
	input				fault4,
	input				chkflt,
    
	output	reg	[3:0]	igbt_rst,
    output				chkflt_over,  
    output	reg			K_1, 
    output	reg			K_2, 
    output	reg			K_3, 
    output	reg			K_4
	);
    
	
parameter DEAD_Z = 10'd480;           //定义死区时间值

reg	tpL;
reg	tpLn;
reg	tpR;
reg	tpRn;

reg	[15:0]	chkflt_data;

reg	[9:0]	d_data1;
reg	[9:0]	d_data2;
reg	[9:0]	d_data3;
reg	[9:0]	d_data4;


/*----------------------------比较输出----------------------------*/
always@(*)
begin
	tpL		= reg_igbt[1];
	tpLn	= !reg_igbt[1];
	tpR		= reg_igbt[0];
	tpRn	= !reg_igbt[0];
end
 
wire	out_en	= (start && !fault);

always@(posedge clk or negedge rstn)
	if(!rstn) begin
		d_data1 <= 10'h0;
	end else if(tpL) begin
		d_data1 <= (d_data1 < DEAD_Z)? (d_data1 + 1'b1): DEAD_Z;
	end else begin
		d_data1 <= 10'h0;
    end

always@(posedge clk or negedge rstn)
	if(!rstn) begin
		d_data2 <= 10'h0;
	end else if(tpLn) begin
		d_data2 <= (d_data2 < DEAD_Z)? (d_data2 + 1'b1): DEAD_Z;
	end else begin
		d_data2 <= 10'h0;
    end

always@(posedge clk or negedge rstn)
	if(!rstn) begin
		d_data3 <= 10'h0;
	end else if(tpR) begin
		d_data3 <= (d_data3 < DEAD_Z)? (d_data3 + 1'b1): DEAD_Z;
	end else begin
		d_data3 <= 10'h0;
    end

always@(posedge clk or negedge rstn)
	if(!rstn) begin
		d_data4 <= 10'h0;
	end else if(tpRn) begin
		d_data4 <= (d_data4 < DEAD_Z)? (d_data4 + 1'b1): DEAD_Z;
	end else begin
		d_data4 <= 10'h0;
    end

/*-----------------------------PWM输出----------------------------*/
always@(posedge clk)
	if(out_en) begin
		K_1	<= (d_data1 == DEAD_Z);
		K_2	<= (d_data2 == DEAD_Z);
		K_3	<= (d_data3 == DEAD_Z);
		K_4	<= (d_data4 == DEAD_Z);
	end else if(chkflt) begin
        if(fault1 && ((chkflt_data > 16'd5000 && chkflt_data < 16'd6200) || (chkflt_data > 16'd10200 && chkflt_data < 16'd11400)))
            K_1 <= 1'b1;
        else
            K_1 <= 1'b0;
			
        if(fault2 && ((chkflt_data > 16'd21000 && chkflt_data < 16'd22200) || (chkflt_data > 16'd26200 && chkflt_data < 16'd27400)))
            K_2 <= 1'b1;
        else
            K_2 <= 1'b0;
			
        if(fault3 && ((chkflt_data > 16'd37000 && chkflt_data < 16'd38200) || (chkflt_data > 16'd42200 && chkflt_data < 16'd43400)))
            K_3 <= 1'b1;
        else
            K_3 <= 1'b0;
			
        if(fault4 && ((chkflt_data > 16'd53000 && chkflt_data < 16'd54200) || (chkflt_data > 16'd58200 && chkflt_data < 16'd59400)))
            K_4 <= 1'b1;
        else
            K_4 <= 1'b0;
	end else begin
		K_1	<= 1'b0;
		K_2	<= 1'b0;
		K_3	<= 1'b0;
		K_4	<= 1'b0;
	end
	
always@(posedge clk)
    if(!chkflt)
        chkflt_data <= 16'h0;
    else if(chkflt_data < 16'd64000)
        chkflt_data <= chkflt_data + 1'b1;
    else
        chkflt_data <= 16'd64000;

always@(posedge clk)
	if(chkflt_data == 16'd13000)
		igbt_rst	<= 4'b0001;
	else if(chkflt_data == 16'd29000)
		igbt_rst	<= 4'b0010;
	else if(chkflt_data == 16'd45000)
		igbt_rst	<= 4'b0100;
	else if(chkflt_data == 16'd61000)
		igbt_rst	<= 4'b1000;
	else
		igbt_rst	<= 4'h0;
		
assign	chkflt_over	= (chkflt_data == 16'd64000);
    
endmodule
