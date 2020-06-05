/* 2to1 mux*/
module mux2 (in0, in1, select, out);

input in0,in1,select;  
output out;
wire s0,w0,w1; 

not n1 (s0, select);
and a1 (w0, s0, in0);
and a2 (w1, select, in1);
or g3	(out, w0, w1); 

endmodule

/* 4to1 mux */
module mux4 (out, a1, a2, b, in0, in1, in2, in3);

input a1, a2, b, in0, in1, in2, in3;
output out;
wire t1, t2;

mux2 m1 (in0, in1, a1, t1);
mux2 m2 (in2, in3, a2, t2);
mux2 m3 (t1, t2, b, out);

endmodule
