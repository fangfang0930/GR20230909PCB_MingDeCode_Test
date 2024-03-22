`timescale 1 ns / 1 ps

 module driver_board
						(
							clk,///Clk16M,//16Mhz,Erik
							//Reset,
							// 驱动
							RUDIN,//right up igbt driver in 
							RDDIN,//right down igbt driver in 
							LUDIN,//left up igbt driver in 
							LDDIN,//left down  igbt driver in 
							ERR,//left igbt err   1 active 
							//LED 显示
							LED1,
							LED2,
							LED3,
							//GR20230909PCB添加--hff
							LED4,
							LED5,
							LED6,
							LED7,
							LED8,
							LED9,
							LED10,
							
							//光纤通信
							COMM_R,
							COMM_T,
							//AD 控制
							ADclk,
							ADcon,
							ADout,
							//故障保护
							DCOV,
							DCUV,//Erik
							HOT_1,//过温告警,V1.01新增,Erik
							HOT_2,//过热保护,Erik  
							Powerfall,//hff-ZYHG003没有这个口
							BypPowerErr,//hff-ZYHG003没有这个口
							//AD校对
							//DSW,//拨码开关输入
							//旁路控制,Erik
							BypCon,
							BypOk,
							rx2,
							tx2,
							test
							);
input clk;//Clk16M;//16Mhz,Erik
//input Reset;//上电先高后低,Erik
// 驱动
output RUDIN;//right up igbt driver in 
output RDDIN;//right down igbt driver in 
output LUDIN;//left up igbt driver in 
output LDDIN;//left down  igbt driver in 
input [3:0]ERR;//left igbt err   1 active 
//LED 显示
output LED1;
output LED2;
output LED3;
//hff-debug
output LED4;
output LED5;
output LED6;
output LED7;
output LED8;
output LED9;
output LED10;
output tx2;
input  rx2;
//光纤通信
input  COMM_R;
output COMM_T;
//AD 控制
output ADclk;
output ADcon;
input ADout;
//故障处理
input DCOV;
input DCUV;
input HOT_1;
input HOT_2; 
input Powerfall;
input BypPowerErr;//高电平代表电压低于保护值,Erik
//AD校对
//input [5:0]DSW;
//旁路控制
output BypCon;
input BypOk;

//其他
output [2:0]test;//[7:0]test;

wire rst_n;
wire start_stop;
wire time_1us;
wire time_1ms;
wire [1:0]igbt_control;
wire reset_unit;
wire fiber_verify_err;
wire fiber_delay_err;
wire [11:0]udc_volt;
wire [11:0]sample_data;
wire [10:0]err_info;
wire [11:0]unit_err_info={err_info[10:2],(fiber_delay_err|fiber_verify_err),err_info[1:0]};
wire AD_trigger;
wire data_valid;
wire err_all;//包含光纤校验、断线及单元本身故障所有的故障
wire err_unit;//单元本身产生的故障
wire work_out;
wire PllLock; //Erik
//wire Clk80M;
//wire clk; /*synthesis keep*///40Mhz
wire SoftDCOV;
wire SoftDCUV;
wire BypConRx;//接收到的旁通闭合信号,Erik
//assign rst_n=((~Reset) && PllLock);//Erik
assign LED1=~(work_out&start_stop&(~err_all));//工作指示灯
assign LED2=~err_all; 
assign LED3=~reset_unit;//低电平亮灯，Erik
//添加几个LED---hff
assign LED4=~fiber_delay_err;//光纤通讯20us没有数据
assign LED5=~fiber_verify_err;//光纤通讯，校验错误
assign LED6=~err_unit;//

//-----------------
assign test[0] = err_unit;
assign test[1] = start_stop;
//assign test[7] = Clk80M;
assign err_all = (fiber_delay_err|fiber_verify_err|err_unit)?1'b1:1'b0;

/*
//锁相环模块,把时钟从16Mhz升到40Mhz
PLL PLL(
							.refclk		(Clk16M				),
							.reset		(Reset				),
							.extlock	(PllLock			),
							.clk0_out	(Clk80M				),
							.clk1_out	(clk				) //40Mhz;
		);
*/

//fiber_rx 输入接收光纤，输出解析的各种指令信号，判断接收光纤的故障状态等
fiber_rx fiber_rx(
							.clk         		(clk				),
							.rst_n				(1),//rst_n				),
							.start_stop			(start_stop			),//启动停止
							.time_1us			(time_1us			),
							.igbt_control		(igbt_control		),
                            .Bypcon				(BypConRx			),
							.reset_unit			(reset_unit			),//复位故障控制信号
							.fiber_verify_err 	(fiber_verify_err	),//光纤通信校验错误
							.fiber_delay_err  	(fiber_delay_err	),//光纤断线故障
							.COMM_R           	(COMM_R				)//输入光纤信号
						);
//fiber_tx 输入要发送的电压和信息，输出光纤和AD的触发信号									
fiber_tx fiber_tx(
							.clk     	(clk			),
							.rst_n   	(1),//rst_n   		),
							.udc_volt 	(udc_volt		),//udc_volt),//要发送的电压值
							.err_info	(unit_err_info	),//要发送的单元信息值
                            .ModuRun	(start_stop&(~err_all)),
                            .BypOk		(Bypok_filt	),
							.AD_Work	(AD_trigger		),//定时触发AD采样的信号
							.COMM_T		(COMM_T  		)
							);

//阀控板下发给单元控制板的光纤故障且持续1ms后,自动旁通
BypDeal BypDeal (
						.clk				(clk				),
						.rst_n				(1),//rst_n				),
						.time_1us			(time_1us			),
						.reset_unit			(reset_unit			),
						.BypConRx			(BypConRx			),
						.Fiber_delay_err	(fiber_delay_err	),
						.Fiber_verify_err	(fiber_verify_err	),
						.delay_tims			(1000				),
						.BypCon				(BypCon				)	
						);

//对旁路闭合成功信号进行防抖处理                            
err_high_detect bypok_filt(
						.clk(clk),
						.rst_n(1),//rst_n),
						.time_1us(time_1us),
						.reset_unit(reset_unit),
						.signal_in((!BypOk)),
						.signal_out(Bypok_filt),
						.delay_tims(1000)//输入范围为1~16383 
						);                            
                            
//AD芯片的各种控制，输出读取的并行AD值12bits							
ads7822    ads7822(
							.clk        (clk        ),//40M
							.rst_n      (1),//rst_n      ),
							.ad_clk     (ADclk      ),//AD时钟 1Mhz
							.ad_cs      (ADcon      ),//AD使能信号              
							.ad_dout    (ADout      ),//AD数据输出
							.AD_trigger (AD_trigger ),//上升沿触发一次采样
							.sample_data(sample_data),//采集的AD值
							.data_valid (data_valid )//AD采集状态 1一个周期采集完毕
							); 
//暂未将AD值转换成真实电压，但是加入拨码开关的校准以及软件过欠压信号
volt_calc volt_calc(
							.clk		(clk		),
							.rst_n		(1),//rst_n		),
							.sample_data(sample_data),//输入AD采样值
							.data_valid (data_valid ),
							.udc_volt 	(udc_volt   ),//计算出的电压值
							.DSW		(~(6'b000000)),//(~(6'b000010)),//(~DSW		), //拨码开关输入
							.DCOV		(SoftDCOV	),
							.DCUV		(SoftDCUV	)

							);
//根据各种控制命令 控制四个桥臂的输出
pwm_out pwm_out	(
							.clk			(clk			),
							.rst_n			(1),//rst_n			),
							.err_unit    	(err_all		),
							.start_stop	 	(start_stop		),//启动停止
							.igbt_control	(igbt_control	),
							.RUDIN		 	(RUDIN			),
							.RDDIN		 	(RDDIN			),
							.LUDIN		 	(LUDIN			),
							.LDDIN		 	(LDDIN			)						
							);
//对各个故障的做防抖处理并检测故障
err_detect err_detect(
							.clk		(clk		),
							.rst_n		(1),//rst_n		),
							.time_1us	(time_1us	),
                            .time_1ms	(time_1ms	),
							.start_stop	(start_stop	),//启动停止
							.reset_unit	(reset_unit	),//复位故障控制信号			
							.ERR		(~ERR		),//硬件是低电平报故障，Erik
							.DCOV		(DCOV		),//(~DCOV		),//硬件是低电平报故障，Erik
							.DCUV		(DCUV		),//(~DCUV		),//硬件是低电平报故障，Erik
							.SoftDCOV	(SoftDCOV	),
							.SoftDCUV	(SoftDCUV	),
							.HOT_1		(HOT_1		),//(~HOT_1		),//hff-接到GND,不用了 ZYHG00与GR2023板子相反,
							.HOT_2		(HOT_2		),//(~HOT_2		),//到cpu故障的时候高电平，Erik//
							.Powerfall	(0),//Powerfall	),hff-ZYHG003没有这个口
							.BypPowerErr(0),//.BypPowerErr(BypPowerErr),//HFF-2024-2-23
                            .BypCon		(BypCon		),//旁路闭合信号，Erik
                            .BypOK		(Bypok_filt	),//旁路成功信号，Erik
							.err_info	(err_info	),
							.err_unit	(err_unit	)
							);
//产生1Mhz的时钟信号，用于故障检测 延时等
div_1us div_1us(
							.clk		(clk		),
							.rst_n		(1),//rst_n		),
						   .time_1us	(time_1us	),
                           .time_1ms	(time_1ms	)
					);
work_led work_led(
							.clk		(clk),//Clk80M		),//防止优化掉80Mhz时钟，在这里使用，Erik
							.rst_n		(1),//rst_n		),
						    .time_1us	(time_1us	),
							.work_out	(work_out	)
							);

 endmodule 