module fsm(out, clock, reset, in);

	input clock, reset, in;
	output out;
	reg out;
	reg [1:0]state;

	always @(posedge clock, posedge reset)
	if(reset == 1) begin
		state <= 2'b00;
		out <= 0;
	end
	else begin
		if(in == 0) 
			state <= 2'b01;
		else
			state <= 2'b10;

		if(state == 2'b01 && in == 1)
			out <= 1;
		else if(state == 2'b10 && in == 0)
			out <= 1;
		else
			out <= 0;
	end

endmodule

