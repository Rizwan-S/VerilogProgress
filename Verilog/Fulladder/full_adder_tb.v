`timescale 1ns/1ps

module tb_full_adder;

	reg D_in_D1;
	reg D_in_D2;
	reg D_in_Cin;
	wire D_in_Sout;
	wire D_in_Cout;

	Full_Adder test( D_in_D1, D_in_D2, D_in_Cin, D_in_Sout, D_in_Cout);

	initial begin

	$dumpfile ("output_full_adder.vcd"); 
	$dumpvars(0, tb_full_adder);

	D_in_D1 = 0; D_in_D2 = 0; D_in_Cin = 0; #10;
	D_in_D1 = 0; D_in_D2 = 0; D_in_Cin = 1; #10;
	D_in_D1 = 0; D_in_D2 = 1; D_in_Cin = 0; #10;
	D_in_D1 = 0; D_in_D2 = 1; D_in_Cin = 1; #10;
	D_in_D1 = 1; D_in_D2 = 0; D_in_Cin = 0; #10;
	D_in_D1 = 1; D_in_D2 = 0; D_in_Cin = 1; #10;
	D_in_D1 = 1; D_in_D2 = 1; D_in_Cin = 0; #10;
	D_in_D1 = 1; D_in_D2 = 1; D_in_Cin = 1; #10;

	end
	endmodule

