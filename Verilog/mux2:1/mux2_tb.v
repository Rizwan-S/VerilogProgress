`timescale 1ns/1ps

module tb_mux;

    reg Data_in_0;
    reg Data_in_1;
    reg sel;

    wire Data_out;

    mux2 uut (
        .in0(Data_in_0), 
        .in1(Data_in_1), 
        .select(sel), 
        .out(Data_out)
    );

    initial begin
	
	$dumpfile ("mux_out.vcd"); 
	$dumpvars(0, tb_mux);

        Data_in_0 = 0;
        Data_in_1 = 0;
        sel = 0;
 
        #100;
        
        Data_in_0 = 0;      Data_in_1 = 0;      sel = 1;      #10;
        Data_in_0 = 0;      Data_in_1 = 1;      sel = 0;      #10;
        Data_in_0 = 0;      Data_in_1 = 1;      sel = 1;      #10;
        Data_in_0 = 1;      Data_in_1 = 0;      sel = 0;      #50;
        Data_in_0 = 1;      Data_in_1 = 0;      sel = 1;      #10;
        Data_in_0 = 1;      Data_in_1 = 1;      sel = 0;      #10;
        Data_in_0 = 1;      Data_in_1 = 1;      sel = 1;      #10;
    end
      
endmodule




