 
 module fiber_tx(
							clk     ,
							rst_n   ,
							udc_volt,//要发送的电压值
							err_info, //要发送的单元信息值
                            ModuRun,
                            BypOk,
							AD_Work,
							COMM_T
							);
input clk           ;
input rst_n         ;
input [11:0]udc_volt;//要发送的电压值
input [11:0]err_info ;//要发送的单元故障信息值
input ModuRun;//要发送的模块工作状态；
input BypOk;//旁路开关状态，高电平代表闭合；
output AD_Work;
output COMM_T;

parameter COUNT_4MHZ=9;
parameter SEND_BITS_NUMS=79;//发送的数据位总数,Erik

wire COMM_T=~COMM_T_reg;//hff-新电路板和安路板子信号相反reg COMM_T;
reg COMM_T_reg; //hff-新电路板和安路板子信号相反
reg [11:0]send_volt;
reg [13:0]send_moduleinfo;//锁存要发送的单元数据
//reg AD_Work;AD的采样频率为50K
reg [3:0]cnt_4m;//计数产生4Mhz的时钟延时
reg [6:0]send_nums;//计数发送数据的个数
wire [6:0]verify_calc=send_volt[3:0]+send_volt[7:4]+send_volt[11:8]+send_moduleinfo[3:0]+send_moduleinfo[7:4]+send_moduleinfo[11:8]+send_moduleinfo[13:12];
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
always@(posedge clk or negedge rst_n)//AD采样一次需要16us,需要在下一次发送前刚好完成一次AD采样,Erik
begin 
	if(!rst_n)
	AD_Work<=0;
	else if(AD_Work)
	AD_Work<=0;
	else if(send_nums==22)
	AD_Work<=1;
end*/
//assign AD_Work = (send_nums==27)?1'b1:1'b0;//发一次采样启动指令;
assign AD_Work = (send_nums==12)?1'b1:1'b0;//发一次采样启动指令,Erik
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin 
		send_volt<=12'd0;
		send_moduleinfo<=14'd0;
	end 
	else 
	begin if(send_nums==0)//锁存电压和故障，以避免发送过程中出现突变
		send_volt<=udc_volt;
		send_moduleinfo<={BypOk,ModuRun,err_info[11:0]};		
	end 
end 
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	COMM_T_reg<=1;
	else 
	case(send_nums)//原来数据发送是从高到低，现在修改成通讯协议的方式，Erik
/*
	1:COMM_T<=0;//发送起始位
	2:COMM_T<=send_volt[11];
	3:COMM_T<=send_volt[10];
	4:COMM_T<=send_volt[9];
	5:COMM_T<=send_volt[8];
	6:COMM_T<=send_volt[7];
	7:COMM_T<=send_volt[6];
	8:COMM_T<=send_volt[5];
	9:COMM_T<=send_volt[4];
	10:COMM_T<=send_volt[3];
	11:COMM_T<=send_volt[2];
	12:COMM_T<=send_volt[1];
	13:COMM_T<=send_volt[0];
	
	14:COMM_T<=send_moduleinfo[7];
	15:COMM_T<=send_moduleinfo[6];
	16:COMM_T<=send_moduleinfo[5];
	17:COMM_T<=send_moduleinfo[4];
	18:COMM_T<=send_moduleinfo[3];
	19:COMM_T<=send_moduleinfo[2];
	20:COMM_T<=send_moduleinfo[1];
	21:COMM_T<=send_moduleinfo[0];
	
	22:COMM_T<=verify_calc[3];
	23:COMM_T<=verify_calc[2];
	24:COMM_T<=verify_calc[1];
	25:COMM_T<=verify_calc[0];
*/
	1:COMM_T_reg<=0;//发送起始位,状态0用来装载数据,因此数据往后顺延.Erik
	2:COMM_T_reg<=send_volt[0];
	3:COMM_T_reg<=send_volt[1];
	4:COMM_T_reg<=send_volt[2];
	5:COMM_T_reg<=send_volt[3];
	6:COMM_T_reg<=send_volt[4];
	7:COMM_T_reg<=send_volt[5];
	8:COMM_T_reg<=send_volt[6];
	9:COMM_T_reg<=send_volt[7];
	10:COMM_T_reg<=send_volt[8];
	11:COMM_T_reg<=send_volt[9];
	12:COMM_T_reg<=send_volt[10];
	13:COMM_T_reg<=send_volt[11];
	
	14:COMM_T_reg<=send_moduleinfo[0];
	15:COMM_T_reg<=send_moduleinfo[1];
	16:COMM_T_reg<=send_moduleinfo[2];
	17:COMM_T_reg<=send_moduleinfo[3];
	18:COMM_T_reg<=send_moduleinfo[4];
	19:COMM_T_reg<=send_moduleinfo[5];
	20:COMM_T_reg<=send_moduleinfo[6];
	21:COMM_T_reg<=send_moduleinfo[7];
	22:COMM_T_reg<=send_moduleinfo[8];
	23:COMM_T_reg<=send_moduleinfo[9];
	24:COMM_T_reg<=send_moduleinfo[10];
	25:COMM_T_reg<=send_moduleinfo[11];
	26:COMM_T_reg<=send_moduleinfo[12];
	27:COMM_T_reg<=send_moduleinfo[13];
	
	28:COMM_T_reg<=verify_calc[0];
	29:COMM_T_reg<=verify_calc[1];
	30:COMM_T_reg<=verify_calc[2];
	31:COMM_T_reg<=verify_calc[3];
	32:COMM_T_reg<=verify_calc[4];
	33:COMM_T_reg<=verify_calc[5];
	34:COMM_T_reg<=verify_calc[6];
	default:COMM_T_reg<=1;//0位装载数据,也发高电平,Erik
	endcase
end 


 endmodule 