/*Important: Once you run ./a.out, it will keep running infinitely, because it is in an always block. You need to hit Ctrl +Z to stop it, else, the vcd will become a large file and will never end.

*/

module dflipflop(q, d, clk);
output q;
input d;
input clk;
reg q;

//behavioral/ sequential designs

always @(posedge clk) // sensitivity list

q <= d;  // <= is a non-blocking statement

endmodule

