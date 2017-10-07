
module REG4BIT(S1,S0,IN,LIN,RIN,OUT,CLOCK,ENABLE);

input S1,S0;      //Select inputs
input CLOCK,ENABLE;

input LIN,RIN;   //serial input
input [3:0] IN; //parallel input
output [3:0] OUT;
reg [3:0] OUT;   //register output

always @(posedge CLOCK)

 begin
 if(ENABLE) OUT=4'b1111;

 else 
   begin
   case({S1,S0})

    2'b00: OUT=OUT;     //HOLD
    2'b01: OUT={RIN,OUT[3:1]}; //Right Operation
    2'b10: OUT={OUT[2:0],LIN}; //Left OPeration
    2'b11: OUT=IN ;      //PArallely LOAD
   endcase
   end

 end
endmodule