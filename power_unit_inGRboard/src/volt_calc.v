//该模块是用来计算实际值并进行校对、限幅、过欠压判断的,目前只用于校对、限幅、过欠压判断,Erik
 module volt_calc(
							clk			,
							rst_n			,
							sample_data	,//输入AD采样值
							data_valid	,
							udc_volt 	,//计算出的电压值
							DSW			,//拨码开关输入
							DCOV		,//软件过压
							DCUV		 //软件欠压
						);
							
input  clk					;
input  rst_n				;
input  data_valid       ;
input  [11:0]sample_data;//输入AD采样值
output [11:0]udc_volt 	;//计算出的电压值
input  [5:0] DSW			;//拨码开关输入 0~31，每一份代表0.631V 第6位0表示+ 1表示－,如果所有拨码均为1（off状态）则不校对
output DCOV;
output DCUV;
wire 	 [5:0] volt_delta	;
reg   [11:0]real_volt;
reg 	 [11:0]udc_volt;
reg	done;
reg DCOV;
reg DCUV;

//计算实际直压值,目前放到阀控板计算,此处先屏蔽,Erik
/*
wire done;
parameter udc_rate=418;/418=1024/2.4496 由于2.4496较小 先左移10位待计算完成后再右移10位

mux12 mux(
		.clk(clk),
		.rst_n(rst_n),
		.start(data_valid),
		.ain(sample_data),
		.bin(udc_rate),
		.yout(real_volt),
		.done(done)
		);
*/


always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
    begin
		real_volt<=12'd0;
        done <= 0;
    end
    else if(data_valid == 1'b1)
    begin
    	real_volt<=sample_data ;//(sample_data<<10-(sample_data*58));//(sample_data*1024-sample_data*(100-943)*1024)>>10;
		
        done <= 1'b1;
    end
end
	
assign volt_delta = {DSW[4:0],1'b0};		
		
always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	udc_volt<=12'd0;
    else if(done&&DSW==6'b111111)//拨码开关全是1，则默认不校对
    udc_volt<=real_volt;
	else if(done&&DSW[5]==1'b0&&real_volt<12'd4033)//限幅 矫正
	udc_volt<=real_volt + volt_delta;
	else if(done&&DSW[5]==1'b1&&real_volt>12'd62)//限幅 矫正
	udc_volt<=real_volt - volt_delta;
	
end

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	begin
		DCOV<=0;
		DCUV<=0;
	end                           
	else if(done&&real_volt>12'd3834)//real_volt>12'd3644)//软件1150Vdc软件过压 硬件为1105v
	begin                             //3834=4095*1150/1228.26      
		DCOV<=1;
		DCUV<=0;
	end
	else if(done&&real_volt<12'd1667)//real_volt<12'd1584)//500Vdc软件欠压 硬件565v
	begin								//1667=4095*500/1228.26      
		DCOV<=0;
		DCUV<=1;//0;
	end
    else
    begin
		DCOV<=0;
		DCUV<=0;
	end
end
 

 endmodule 