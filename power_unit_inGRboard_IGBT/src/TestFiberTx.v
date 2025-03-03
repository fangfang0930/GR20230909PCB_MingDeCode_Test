 
 module fiber_tx(
							clk     ,
							rst_n   ,
							udc_volt,//要发送的电压值
							err_info, //要发送的单元信息值
							AD_Work,
							COMM_T
							);
input clk           ;
input rst_n         ;
input [11:0]udc_volt;//要发送的电压值
input [7:0]err_info ;//要发送的单元信息值
output AD_Work;
output COMM_T;

parameter COUNT_4MHZ=9;
parameter SEND_BITS_NUMS=56;

reg COMM_T;
//reg AD_Work;//AD的采样频率为72.3K
reg [3:0]cnt_4m;//计数产生4Mhz的时钟延时
reg [5:0]send_nums;//计数发送数据的个数
wire [6:0]verify_calc=udc_volt[3:0]+udc_volt[7:4]+udc_volt[11:8]+err_info[3:0]+err_info[7:4];
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	cnt_4m<=0;
	else if(cnt_4m==COUNT_4MHZ)
	cnt_4m<=0;
	else
	cnt_4m<=cnt_4m+1'b1;
end 
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	send_nums<=0;
	else if(send_nums==SEND_BITS_NUMS&&cnt_4m==COUNT_4MHZ)
	send_nums<=0;
	else if(cnt_4m==COUNT_4MHZ)
	send_nums<=send_nums+1'b1;
end 
/*
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	AD_Work<=0;
	else if(AD_Work)
	AD_Work<=0;
	else if(send_nums==22)
	AD_Work<=1;
end*/
assign AD_Work = (send_nums==27)?1'b1:1'b0;//由于
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	COMM_T<=1;
	else 
	case(send_nums)
	1:COMM_T<=0;//发送起始位
	2:COMM_T<=udc_volt[11];
	3:COMM_T<=udc_volt[10];
	4:COMM_T<=udc_volt[9];
	5:COMM_T<=udc_volt[8];
	6:COMM_T<=udc_volt[7];
	7:COMM_T<=udc_volt[6];
	8:COMM_T<=udc_volt[5];
	9:COMM_T<=udc_volt[4];
	10:COMM_T<=udc_volt[3];
	11:COMM_T<=udc_volt[2];
	12:COMM_T<=udc_volt[1];
	13:COMM_T<=udc_volt[0];
	
	14:COMM_T<=err_info[7];
	15:COMM_T<=err_info[6];
	16:COMM_T<=err_info[5];
	17:COMM_T<=err_info[4];
	18:COMM_T<=err_info[3];
	19:COMM_T<=err_info[2];
	20:COMM_T<=err_info[1];
	21:COMM_T<=err_info[0];
	
	22:COMM_T<=verify_calc[3];
	23:COMM_T<=verify_calc[2];
	24:COMM_T<=verify_calc[1];
	25:COMM_T<=verify_calc[0];
	default:COMM_T<=1;
	endcase
end 


 endmodule 