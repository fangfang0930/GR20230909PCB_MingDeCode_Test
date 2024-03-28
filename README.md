# GR20230909PCB_MingDeCode_Test
20240326 10:07下载程序到79快板子里。光纤引脚改为板卡引脚（可加的上层通讯板为rx2 tx2和电路板匹配）。
20240328 17:03 改led指示灯
	assign LED1=~(work_out&start_stop&(~err_all));//工作指示灯
        assign LED2=~DCOV; // 1178v  1147 硬件过压
	assign LED3=~SoftDCOV; //1145v 软件过压
	assign LED4=~DCUV;	//过522v报警	556报警取消 硬件欠压
	assign LED5=~SoftDCUV;	//495v 软件欠压
	assign LED6=~HOT_2;	// 过热
	assign LED7=~err_info[8];//为ERR[0]消抖后的信号	Igbt1故障
	assign LED8=~err_info[7]; //Igbt2故障
	assign LED9=~err_info[6];	 //Igbt3故障
	assign LED10=~err_info[5];//  Igbt4故障
