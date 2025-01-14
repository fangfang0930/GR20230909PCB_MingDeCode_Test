module ad(clk, ad_in, adclk, cs_n, volt);

    input	clk;
    input	ad_in;
    
    output	adclk;
    output	cs_n;
    output	[11:0]volt;
    
    reg		cs_n;
    reg		adclk;
    reg		[11:0]volt;
    
    reg		[11:0]rsr;
    reg		[5:0]clk_div;
    reg		[4:0]ad_count;
    

    reg		[11:0]	adc_out;
	
reg	[10:0]	ad_time;		
always@(posedge clk)
	if(ad_time < 11'd1333)
		ad_time	<= ad_time + 1'b1;
	else
		ad_time	<= 11'h0;

reg	[11:0]	adc_data1, adc_data2, adc_data3, adc_data4, adc_data5;
always@(posedge clk)
	if(ad_time == 12'd800) begin
		adc_data1	<= adc_out;
		adc_data2	<= adc_data1;
		adc_data3	<= adc_data2;
		adc_data4	<= adc_data3;
		adc_data5	<= adc_data4;
	end else begin
		adc_data1	<= adc_data1;
		adc_data2	<= adc_data2;
		adc_data3	<= adc_data3;
		adc_data4	<= adc_data4;
		adc_data5	<= adc_data5;
	end
		
reg	[3:0]	sta;		
always@(posedge clk)
	if(ad_time > 12'd800)
		sta	<= (sta < 4'hF)? (sta + 1'b1): 4'hF;
	else
		sta	<= 4'h0;

reg	[14:0]	adc_sum;
reg	[11:0]	adc_max, adc_min;
always@(posedge clk)
begin
	case(sta)
	0		: begin	adc_sum	<= adc_out;				adc_max	<= adc_out;	adc_min	<= adc_out;	end
	1		: begin	adc_sum	<= adc_sum + adc_data1;	adc_max	<= (adc_max > adc_data1)? adc_max: adc_data1;	adc_min	<= (adc_min < adc_data1)? adc_min: adc_data1;	end
	2		: begin	adc_sum	<= adc_sum + adc_data2; adc_max	<= (adc_max > adc_data2)? adc_max: adc_data2;	adc_min	<= (adc_min < adc_data2)? adc_min: adc_data2;	end
	3		: begin	adc_sum	<= adc_sum + adc_data3; adc_max	<= (adc_max > adc_data3)? adc_max: adc_data3;	adc_min	<= (adc_min < adc_data3)? adc_min: adc_data3;	end
	4		: begin	adc_sum	<= adc_sum + adc_data4; adc_max	<= (adc_max > adc_data4)? adc_max: adc_data4;	adc_min	<= (adc_min < adc_data4)? adc_min: adc_data4;	end
	5		: begin	adc_sum	<= adc_sum + adc_data5; adc_max	<= (adc_max > adc_data5)? adc_max: adc_data5;	adc_min	<= (adc_min < adc_data5)? adc_min: adc_data5;	end
	6		: begin	adc_sum	<= adc_sum - adc_max;   adc_max	<= adc_max;	adc_min	<= adc_min;	end
	7		: begin	adc_sum	<= adc_sum - adc_min;   adc_max	<= adc_max;	adc_min	<= adc_min;	end
	8		: begin	adc_sum	<= adc_sum;             adc_max	<= adc_max;	adc_min	<= adc_min;	end
	default	: begin	adc_sum	<= 15'h0;               adc_max	<= 12'h0;	adc_min	<= 12'h0;	end
	endcase
end

always@(posedge clk)
	if(sta == 8)
		volt	<= adc_sum[13:2];
	else
		volt	<= volt;
		
		
    always@(posedge clk)
    begin
    if(ad_time >= 12'd1 && ad_time <= 12'd700)
        cs_n <= 1'b0;
    else
        cs_n <= 1'b1;
    end
    
    always@(posedge clk)
    begin
    if(cs_n)
        clk_div <= 6'b0;
    else
        begin
        if(clk_div < 6'd39)
            clk_div <= clk_div + 1'b1;
        else
            clk_div <= 6'b0;
        end
    end
    
    always@(posedge clk)
    begin
    if(cs_n)
		adclk <= 1'b1;
    else if(clk_div == 6'd19)
        adclk <= 1'b1;
    else if(clk_div == 6'd39)
        begin
        if(ad_count >= 6'd16)
            adclk <= 1'b1;
        else
            adclk <= 1'b0;
        end
    end
    
    always@(posedge clk)
    begin
    if(cs_n)
        begin
        adc_out <= rsr;
        ad_count <= 5'b0;
        end
    else if(clk_div == 6'd39)
        begin
        if(ad_count < 5'd16)
            ad_count <= ad_count + 1'b1;
        else
            ad_count <= 5'd16;
        end
    end
    
    always@(posedge clk)
    begin
    if(clk_div == 6'd19)
        begin
        if(ad_count < 5'd16)
            begin
            rsr[0] <= ad_in;
            rsr[11:1] <= rsr[10:0];
            end
        end
    end
    
endmodule
