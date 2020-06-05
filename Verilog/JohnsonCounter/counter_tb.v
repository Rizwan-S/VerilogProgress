`timescale 10ns/1ps

module tb_johnson;
    // Inputs
    reg clock;
    reg r;
    // Outputs
    wire [3:0]Count_out;

counter uut (Count_out,r,clock); 

initial begin

$dumpfile ("counter.vcd"); 
$dumpvars(0,tb_johnson);

clock = 0;
r = 1;
#50 r=0;

end

always 
#3 clock=~clock;


initial begin
#300 $finish;
end

endmodule
