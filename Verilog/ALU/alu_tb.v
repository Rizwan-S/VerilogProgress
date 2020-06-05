`timescale 1ns/1ps
module alu_test;
reg [39:0]a,b;
reg clk;
reg [4:0]s;
wire [39:0]out;
alu uut (a,b,s,clk,out);
initial
begin
$dumpfile("alua.vcd");
$dumpvars(0, alu_test);
a= 40'h000000000b;
b= 40'h0000000003;
clk = 0;
s = 5'b00101;
end

always
begin
#3 clk=~clk;
end

always
begin

#10 s = 5'b00110;	//s ->6
#10 s = 5'b01000;	//s ->8
#10 s = 5'b01011;	//s ->11
#10 s = 5'b00101;	//s ->5

end

endmodule