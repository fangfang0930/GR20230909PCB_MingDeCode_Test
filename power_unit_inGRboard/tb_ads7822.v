`timescale 1ns / 1ns

module tb_ads7822;

  // 信号声明
  reg clk;
  reg rst_n;
  reg ad_dout;
  reg AD_trigger;
  wire ad_clk;
  wire ad_cs;
  wire [11:0] sample_data;
  wire data_valid;

  // 模块实例化
  ads7822 uut (
    .clk(clk),
    .rst_n(rst_n),
    .ad_dout(ad_dout),
    .AD_trigger(AD_trigger),
    .ad_clk(ad_clk),
    .ad_cs(ad_cs),
    .sample_data(sample_data),
    .data_valid(data_valid)
  );

  // 时钟生成
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 定义40MHz的时钟
	forever #50 ad_dout = $random;  // 定义40MHz的时钟
  end

  // 初始值
  initial begin
    rst_n = 0;
    ad_dout = 0;
    AD_trigger = 0;

    // 等待一段时间，然后释放复位
    #50 rst_n = 1;

    // 等待一段时间，然后开始测试
    #100;

    // 触发一次采样
    AD_trigger = 1;
    #10 AD_trigger = 0;

    // 在这里添加更多的测试用例

    // 结束仿真
  //  #1000 $finish;
  end

  // 显示仿真结果
  always @(posedge clk) begin
    $display("Sample Data: %h, Data Valid: %b", sample_data, data_valid);
  end

endmodule
