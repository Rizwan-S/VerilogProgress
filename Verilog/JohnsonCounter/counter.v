module dff(q,d,reset,clk);
output q;
input d,clk,reset;
reg q;

always@(posedge clk or reset)
begin
	if (reset==1) q=0;
	else q=d;
end
endmodule


module counter(q,reset,clk);
output [3:0]q;
input clk,reset;
wire w;

not n1 (w,q[3]);
dff f1(q[0],w,reset,clk);
dff f2(q[1],q[0],reset,clk);
dff f3(q[2],q[1],reset,clk);
dff f4(q[3],q[2],reset,clk);

endmodule


