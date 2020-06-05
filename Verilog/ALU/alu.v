//if select line s=00101->5, out=a+b   
//if s=00110->6, out= a-b;
//if s=01000->8, a*b
//01011->11 --> a/b

module alu (a,b,s,clk,out);
input [39:0]a,b;
input [4:0]s;
input clk;
output [39:0]out;
reg [39:0]out;

always @ (posedge clk)
begin
if (s==5'b00101)
out = a+b;
else if (s==5'b1000)
out= a*b;
else if (s==5'b00110)
out = a-b;
else if (s==5'b01011)
out = a/b;
end
endmodule


