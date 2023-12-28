 
module pwm_out(
					clk			,
					rst_n			,
					err_unit 	,//单元故障
					start_stop	,//启动停止
					igbt_control,
					RUDIN			,
					RDDIN			,
					LUDIN			,
					LDDIN		
				  );
input clk			;
input rst_n			;
input err_unit ;
input start_stop;
input [1:0]igbt_control;	 	
output RUDIN;
output RDDIN;
output LUDIN;
output LDDIN;		

reg RUDIN;
reg RDDIN;
reg LUDIN;
reg LDDIN;
reg [8:0]RUCnt;//死区时间寄存器,Erik
reg [8:0]RDCnt;
reg [8:0]LUCnt;
reg [8:0]LDCnt;

parameter DeadTime = 0;	

always@(posedge clk or negedge rst_n)
begin 
	if(!rst_n)
	begin 
		RUDIN<=1'b0;//输出低电平代表关断IGBT,Erik
		RDDIN<=1'b0;
		LUDIN<=1'b0;
		LDDIN<=1'b0;
        RUCnt<=1'b0;
        RDCnt<=1'b0;
        LUCnt<=1'b0;
        LDCnt<=1'b0;
	end 
	else if(err_unit==1|start_stop==0)//故障 或者 停止时不输出
	begin 
		RUDIN<=1'b0;
		RDDIN<=1'b0;
		LUDIN<=1'b0;
		LDDIN<=1'b0;
        RUCnt<=1'b0;
        RDCnt<=1'b0;
        LUCnt<=1'b0;
        LDCnt<=1'b0;
	end 	
	else if(igbt_control==2'b00)//上管全关
	begin 
		RUDIN<=1'b0;
        RUCnt<=1'b0;
        if(RDCnt >= DeadTime)
        begin
        	RDDIN<=1'b1;
        end
        else
        begin
        	RDDIN<=1'b0;
            RDCnt<=RDCnt + 1'b1;
        end
        LUDIN<=1'b0;
        LUCnt<=1'b0;
        if(LDCnt >= DeadTime)
        begin
        	LDDIN<=1'b1;
        end
        else
        begin
        	LDDIN<=1'b0;
            LDCnt<=RDCnt + 1'b1;
        end
	end 
	else if(igbt_control==2'b01)//右上管开，左上管关
	begin
        if(RUCnt >= DeadTime)
        begin
        	RUDIN<=1'b1;
        end
        else
        begin
        	RUDIN<=1'b0;
            RUCnt<=RDCnt + 1'b1;
        end     
		RDDIN<=1'b0;
        RDCnt<=1'b0;
		LUDIN<=1'b0;
        LUCnt<=1'b0;
        if(LDCnt >= DeadTime)
        begin
        	LDDIN<=1'b1;
        end
        else
        begin
        	LDDIN<=1'b0;
            LDCnt<=RDCnt + 1'b1;
        end
	end 	
	else if(igbt_control==2'b10)//左上管开，右上管关
	begin 
		RUDIN<=1'b0;
        RUCnt<=1'b0;
        if(RDCnt >= DeadTime)
        begin
        	RDDIN<=1'b1;
        end
        else
        begin
        	RDDIN<=1'b0;
            RDCnt<=RDCnt + 1'b1;
        end
        if(LUCnt >= DeadTime)
        begin
        	LUDIN<=1'b1;
        end
        else
        begin
        	LUDIN<=1'b0;
            LUCnt<=LUCnt + 1'b1;
        end
		LDDIN<=1'b0;
        LDCnt<=1'b0;
	end 
	else if(igbt_control==2'b11)//上管全开
	begin 
        if(RUCnt >= DeadTime)
        begin
        	RUDIN<=1'b1;
        end
        else
        begin
        	RUDIN<=1'b0;
            RUCnt<=RDCnt + 1'b1;
        end     
		RDDIN<=1'b0;
        RDCnt<=1'b0;
        if(LUCnt >= DeadTime)
        begin
        	LUDIN<=1'b1;
        end
        else
        begin
        	LUDIN<=1'b0;
            LUCnt<=LUCnt + 1'b1;
        end
		LDDIN<=1'b0;
        LDCnt<=1'b0;
	end 
end 
endmodule 