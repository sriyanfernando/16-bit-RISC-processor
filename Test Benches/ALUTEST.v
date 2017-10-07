include "ALU.v";
module ALUTEST;   //testbench for ALU

reg[15:0] a,b;  //inputs
reg[2:0] op;
wire[15:0] out;

ALU alu(.a(a),.b(b),.op(op),.out(out));

initial 
 begin
 a=16'd1;b=16'd1;
 #100 $display("a=%d,b=%d",a,b);

 op=3'b000;
 #100 $display("op=%b,OUTPUT=%b",op,out);
 

 op=3'b001;
 #100 $display("op=%b,OUTPUT=%b",op,out);

 
 op=3'b010;
 #100 $display("op=%b,OUTPUT=%b",op,out);


 op=3'b011;
 #100 $display("op=%b,OUTPUT=%b",op,out);


 op=3'b111;
 #100 $display("op=%b,OUTPUT=%b",op,out);

 
 end
endmodule

