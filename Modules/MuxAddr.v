module mux_2X1Addr( select, a, b, q);

	input select;
	input [3:0] a, b;
	output [3:0] q;

	reg [3:0] q;
	wire select;
	wire[3:0] a, b;

	always @*
	if(select == 0)
		assign q = a;
	else
		assign q = b;

endmodule