 module BypDeal (
						clk				,
						rst_n			,
						time_1us    	,
						reset_unit		,
						BypConRx		,
						Fiber_delay_err	,
						Fiber_verify_err,
						delay_tims,
						BypCon	
						);

input	clk;
input	rst_n;
input	time_1us;
input	reset_unit;
input	BypConRx;
input	Fiber_delay_err;
input	Fiber_verify_err;
input	[13:0]delay_tims;
output	BypCon;

wire	BypCon;
reg	BypConA;
reg	[13:0]DelayCnt;
reg	[1:0]time_1us_syn;
reg	[15:0]OnTimeCnt;

parameter OnTime = 10000;//10ms

always@(posedge clk)
begin
	time_1us_syn <= {time_1us_syn[0],time_1us};
end

always@(posedge clk)
begin
	if(!rst_n)
	begin
		BypConA <= 0;
		DelayCnt <= 0;
		OnTimeCnt <= 0;
	end
	else if(reset_unit == 1)
	begin
		BypConA <= 0;
		DelayCnt <= 0;
		OnTimeCnt <= 0;
	end
	else
	begin
		if(BypConA == 1'b1)
		begin
			if((time_1us_syn == 2'b01)&&(OnTimeCnt > 0))
			begin
				OnTimeCnt <= OnTimeCnt - 1'b1;
			end
		end
		else if(Fiber_delay_err|Fiber_verify_err)
		begin
			if(DelayCnt >= delay_tims)
			begin
				BypConA <= 1;
				OnTimeCnt <= OnTime;
			end
			else if(time_1us_syn == 2'b01)
			begin
				DelayCnt <= DelayCnt + 1'b1;
			end
		end
		else
		begin
			DelayCnt <= 0;
		end
	end
end

//assign	BypCon = (OnTimeCnt > 1'b1)? 1'b1 : BypConRx;//通讯下发故障后，由单元控制板自行旁路，但是有风险，暂时不使用，Erik
assign	BypCon =  BypConRx;//旁路接触器的闭合只能由主控控制，Erik

endmodule
			