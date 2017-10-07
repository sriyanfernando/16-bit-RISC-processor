module mux_2X1( select, a, b, q);

	input select;
	input [15:0] a, b;
	output [15:0] q;

	reg [15:0] q;
	wire select;
	wire[15:0] a, b;

	always @*
	if(select == 0)
		assign q = a;
	else
		assign q = b;

endmodule