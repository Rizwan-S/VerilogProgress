`timescale 1ns/1ps

module tb_mux4;
	
	reg Din_i0;
	reg Din_i1;
	reg Din_i2;
	reg Din_i3;
	reg Din_a1;
	reg Din_a2;
	reg Din_b;
	wire Dof_out;

	mux4 test(Dof_out, Din_a1, Din_a2, Din_b, Din_i0, Din_i1, Din_i2, Din_i3);

	initial begin

	$dumpfile ("output_mux4.vcd"); 
	$dumpvars(0, tb_mux4);
	
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 0; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 0; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 0; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 0; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 0; Din_a2 = 1; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 0; Din_b = 1; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 0; #10;
	Din_i0 = 1; Din_i1 = 1; Din_i2 = 1; Din_i3 = 1; Din_a1 = 1; Din_a2 = 1; Din_b = 1; #10;

	end
	endmodule




