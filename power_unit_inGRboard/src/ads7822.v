 
 module ads7822(
							clk        ,//40M
							rst_n      ,
							ad_clk     ,//AD时钟 1Mhz
							ad_cs      ,//AD使能信号              
							ad_dout    ,//AD数据输出
							AD_trigger    ,//上升沿触发一次采样
							sample_data,//采集的AD值
							data_valid //AD采集状态 1一个周期采集完毕
							); 
input clk        ;//40M
input rst_n      ;
output ad_clk    ;//AD时钟 1Mhz
output ad_cs     ;//AD使能信号              
input ad_dout    ;//AD数据输出
input AD_trigger    ;//上升沿触发一次采样
output [11:0]sample_data;//采集的AD值
output data_valid ;//AD采集状态 1一个周期采集完毕	
reg[11:0] sample_data;
reg data_valid;
reg ad_clk;

parameter COUNT_1MHZ=39;//27;//39;//1.5Mhz
parameter COUNT_M=19;//13;//信号的中间值计数

reg ad_dout_syn,ad_dout_syn1;
reg ad_trig_syn,ad_trig_syn1;
//
reg[5:0]  div_cnt; 
reg[5:0]  numer_cnt;   //
reg ad_cs_reg;
reg AD_Work;
//  
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	AD_Work<=0;
	else if({ad_trig_syn1,ad_trig_syn}==2'b01)//上升沿检测
	AD_Work<=1;
	else if (numer_cnt==6'd17)//结束一次采集
	AD_Work<=0;
end 
             
always@(posedge clk)
begin
     ad_dout_syn<=ad_dout;//硬件信号没反，与清华原来的硬件不一样，Erik
     ad_dout_syn1<=ad_dout_syn;
	 ad_trig_syn<=AD_trigger;
	 ad_trig_syn1<=ad_trig_syn;
end
always@(posedge clk or negedge rst_n)
begin
     if(!rst_n)
        div_cnt<=0;
     else if((div_cnt==COUNT_1MHZ)||(!AD_Work))
        div_cnt<=0;
     else if(AD_Work)
        div_cnt<=div_cnt+1'b1;
end

always@(posedge clk or negedge rst_n)
begin
     if(!rst_n)
        numer_cnt<=6'd0;
     else if((numer_cnt==6'd17)||(!AD_Work))
        numer_cnt<=6'd0;
     else if(div_cnt==COUNT_1MHZ)
        numer_cnt<=numer_cnt+1'b1;
end

always@(posedge clk or negedge rst_n)
begin
     if(!rst_n)
          ad_cs_reg<=1'b0;
     else if(numer_cnt==6'd1)
          ad_cs_reg<=1'b1;
     else if(numer_cnt==6'd17)
          ad_cs_reg<=1'b0;//AD使能的时间为16个时钟节拍
end     
assign ad_cs=~ad_cs_reg;

always@(posedge clk or negedge rst_n)
begin
     if(!rst_n)
        data_valid<=1'b0;
     else if(data_valid)
        data_valid<=1'b0;
     else if(numer_cnt==6'd17)
        data_valid<=1'b1;
end     

always@(posedge clk or negedge rst_n)
begin
     if(!rst_n)
        ad_clk<=1'b0;
		else if((numer_cnt>5'd0)&&(numer_cnt<=5'd16)&&(div_cnt==COUNT_1MHZ)) //hff-ad芯片不一样，驱动也应改动
     //else if((numer_cnt>5'd0)&&(numer_cnt<5'd16)&&(div_cnt==COUNT_1MHZ))
        ad_clk<=1'b0;
		else if((numer_cnt>5'd0)&&(numer_cnt<=5'd16)&&(div_cnt==COUNT_M))
     //else if((numer_cnt>5'd0)&&(numer_cnt<5'd16)&&(div_cnt==COUNT_M))
        ad_clk<=1'b1;
end     
reg [11:0]ad_syn;
always@(posedge clk or negedge rst_n)
begin
     if(!rst_n)
        ad_syn<=12'd0;
     else if(!AD_Work)
        ad_syn<=12'd0;
	 else if((numer_cnt>5'd4)&&(numer_cnt<5'd17)&&(div_cnt==(COUNT_M+3)))
     //else if((numer_cnt>5'd3)&&(numer_cnt<5'd16)&&(div_cnt==(COUNT_M+3)))//2009.12.15  <5'd16 （17）
        ad_syn<={ad_syn[10:0],ad_dout_syn}; 
end
always@(posedge clk or negedge rst_n)
begin
     if(!rst_n)
	  sample_data<=12'd0;
	  else if(numer_cnt==5'd17)
	  sample_data<=ad_syn;
end	  
 endmodule 