`timescale 1ns/1ps

module tb_fsm;

	reg in, clock, reset;
	wire out;	

	fsm test(out, clock, reset, in);

	initial begin

	$dumpfile ("fsm_out.vcd"); 
	$dumpvars(0, tb_fsm);

	clock = 0; in = 0; reset = 1; #8; //A->B->reset
	in = 1; reset = 1; #10;		// A->C->reset
	in = 0; reset = 0; #10;		// A->B
	in = 0; reset = 0; #10;		// B->B
	in = 1; reset = 0; #10;		// B->C
	in = 1; reset = 0; #10;		// C->C
	in = 0; reset = 0; #10;		// C->B
	in = 0; reset = 1; #10;		// B->B->reset
	in = 0; reset = 0; #10;		// A->B
	in = 1; reset = 1; #10;		// B->C->reset
	in = 1; reset = 0; #10;		// A->C
	in = 0; reset = 1; #10;		// C->B->reset
	in = 1; reset = 0; #10;		// A->C
	in = 1; reset = 1; #10;		// C->C->reset
	$finish;
	end

	always
	#5 clock = ~clock;

endmodule
