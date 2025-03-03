`timescale 1ns/1ps

module tb_pwm_out;

  reg clk;
  reg rst_n;
  reg err_unit;
  reg start_stop;
  reg [1:0] igbt_control;
  wire RUDIN, RDDIN, LUDIN, LDDIN;

  pwm_out uut (
    .clk(clk),
    .rst_n(rst_n),
    .err_unit(err_unit),
    .start_stop(start_stop),
    .igbt_control(igbt_control),
    .RUDIN(RUDIN),
    .RDDIN(RDDIN),
    .LUDIN(LUDIN),
    .LDDIN(LDDIN)
  );

  // 添加时钟生成
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // 初始化输入
  initial begin
    rst_n = 1;
    err_unit = 0;
    start_stop = 1;
    igbt_control = 2'b00;

    // 在仿真中持续运行
   // #100 rst_n = 1;  // 施加一个低电平复位
	 
    #100 err_unit = 0;  // 设置故障
    #100 start_stop = 0;  // 设置停止
    #100 start_stop = 1;  // 设置启动
    #10000 igbt_control = 2'b01;  // 右上管开，左上管关
    #10000 igbt_control = 2'b10;  // 左上管开，右上管关
    #10000 igbt_control = 2'b11;  // 上管全开
    #10000 igbt_control = 2'b10;  // 上管全开
	#10000 igbt_control = 2'b01; 
	   #10000 igbt_control = 2'b10;  // 上管全开
	#10000 igbt_control = 2'b01; 
    //#100 $stop;  // 终止仿真
  end

endmodule
