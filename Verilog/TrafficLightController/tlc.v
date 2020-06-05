module tlc(ALRED, ALYELLOW, ALGREEN, BLRED, BLYELLOW, BLGREEN, Ta, Tb, RESET, CLK);
	parameter 
		width = 4,
		S0 = 3'b000,
		S1 = 3'b001,
		S2 = 3'b010,
		S3 = 3'b011,
		S4 = 3'b100,
		S5 = 3'b101;
	input Ta, Tb, RESET, CLK;
	output ALRED, ALYELLOW, ALGREEN, BLRED, BLYELLOW, BLGREEN; 
	reg [width - 1:0]state, nextstate;

	always @(posedge CLK, posedge RESET)
	begin
	if(RESET)
		state <= S0;
	else
		state <= nextstate;
	end
	
	//Next state logic:
	always @(state, Ta, Tb)
	case(state)
	S0:
		if(Ta == 1)
			nextstate <= S0;
		else
			nextstate <= S1;
	S1:
		nextstate <= S2;
	S2:
		nextstate <= S3;
	S3:
		if(Tb == 1)
			nextstate <= S3;
		else
			nextstate <= S4;
	S4:
		nextstate <= S5;
	S5:
		nextstate <= S0;
	default: nextstate <= S0;
	endcase

	//Output Logic:
	assign ALRED = (state == S3 || state == S4 || state == S5);
	assign ALYELLOW = (state == S1 || state == S2); 
	assign ALGREEN = (state ==  S0);
	assign BLRED = (state == S0 || state == S1 || state == S2);
	assign BLYELLOW = (state == S4 || state == S5);
	assign BLGREEN = (state == S3);

endmodule
	

	

	
