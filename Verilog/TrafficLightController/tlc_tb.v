`timescale 1ns/1ps
 
module testbench;

	reg Ta, Tb, RESET, CLK;
	wire ALRED, ALYELLOW, ALGREEN, BLRED, BLYELLOW, BLGREEN;

	tlc test(ALRED, ALYELLOW, ALGREEN, BLRED, BLYELLOW, BLGREEN, Ta, Tb, RESET, CLK);
	
	initial begin

	$dumpfile ("tlc_out.vcd"); 
	$dumpvars(0, testbench);
	
	CLK = 0;
	RESET = 1; Ta = 0; Tb = 0; $display("RESET = 1, State: S0->S0"); #10;
	RESET = 0; Ta = 1; Tb = 0; $display("Ta = 1, Tb = 0, State: S0"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S1"); #10;
	RESET = 1; Ta = 0; Tb = 0; $display("RESET = 1, State: S1->S0"); #10;
	RESET = 0; Ta = 0; Tb = 1; $display("Ta = 0, Tb = 1, State: S1"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S2"); #10;	
	RESET = 1; Ta = 0; Tb = 0; $display("RESET = 1, State: S2->S0"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 1, Tb = 0, State: S1"); #10;
	RESET = 0; Ta = 1; Tb = 0; $display("Ta = 1, Tb = 0, State: S2"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S3"); #10;
	RESET = 1; Ta = 0; Tb = 0; $display("RESET = 1, State: S3->S0"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S1"); #10;
	RESET = 0; Ta = 1; Tb = 1; $display("Ta = 1, Tb = 1, State: S2"); #10;
	RESET = 0; Ta = 0; Tb = 1; $display("Ta = 0, Tb = 1, State: S3"); #10;
	RESET = 0; Ta = 0; Tb = 1; $display("Ta = 0, Tb = 1, State: S3"); #10;	
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S4"); #10;
	RESET = 1; Ta = 0; Tb = 0; $display("RESET = 1, STATE: S4->S0"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S1"); #10;	
	RESET = 0; Ta = 1; Tb = 1; $display("Ta = 1, Tb = 1, State: S2");#10;
	RESET = 0; Ta = 1; Tb = 0; $display("Ta = 1, Tb = 0, State: S3"); #10;
	RESET = 0; Ta = 1; Tb = 0; $display("Ta = 1, Tb = 0, State: S4"); #10;
	RESET = 0; Ta = 0; Tb = 1; $display("Ta = 0, Tb = 1, State: S5"); #10;
	RESET = 1; Ta = 0; Tb = 0; $display("RESET = 1, STATE: S5->S0"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S1"); #10;	
	RESET = 0; Ta = 1; Tb = 1; $display("Ta = 1, Tb = 1, State: S2"); #10;
	RESET = 0; Ta = 1; Tb = 1; $display("Ta = 1, Tb = 1, State: S3"); #10;
	RESET = 0; Ta = 1; Tb = 0; $display("Ta = 1, Tb = 0, State: S4"); #10;	
	RESET = 0; Ta = 1; Tb = 0; $display("Ta = 1, Tb = 0, State: S5"); #10;
	RESET = 0; Ta = 1; Tb = 1; $display("Ta = 1, Tb = 1, State: S0"); #10;
	RESET = 0; Ta = 0; Tb = 1; $display("Ta = 0, Tb = 1, State: S1"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S2"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S3"); #10;
	RESET = 0; Ta = 0; Tb = 0; $display("Ta = 0, Tb = 0, State: S4"); #10;
	RESET = 0; Ta = 1; Tb = 1; $display("Ta = 1, Tb = 1, State: S5"); #10;
	RESET = 0; Ta = 1; Tb = 1; $display("Ta = 1, Tb = 1, State: S0"); #10;
	$finish;
	end		

	always 
	#5 CLK = ~CLK;

endmodule