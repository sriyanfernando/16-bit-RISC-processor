include "REG4BIT.v";
module REG4BITTEST; //test bench for REG4BIT
reg S1,S0;
reg CLOCK,ENABLE;

reg LIN,RIN;
reg [3:0]IN;
wire [3:0]OUT;

REG4BIT RB(.S1(S1),.S0(S0),.IN(IN),.LIN(LIN),.RIN(RIN),.OUT(OUT),.CLOCK(CLOCK),.ENABLE(ENABLE));

initial
 
 CLOCK=1'b0;
 
always
  begin
       ENABLE=1'b1;
       #100 CLOCK= ~CLOCK;
  end

initial
 begin
     IN=4'b1100;
    #100 $display("I3=%d,I2=%d,I1=%d,I0=%d",IN[3],IN[2],IN[1],IN[0]);
      S1=0;S0=0;
    #100 $display("OUT3=%d,OUT2=%d,OUT1=%d,OUT0=%d",OUT[3],OUT[2],OUT[1],OUT[0]);
      S1=0;S0=1;
    #100 $display("OUT3=%d,OUT2=%d,OUT1=%d,OUT0=%d",OUT[3],OUT[2],OUT[1],OUT[0]);
      S1=1;S0=0;
    #100 $display("OUT3=%d,OUT2=%d,OUT1=%d,OUT0=%d",OUT[3],OUT[2],OUT[1],OUT[0]);
      S1=1;S0=1;
    #100 $display("OUT3=%d,OUT2=%d,OUT1=%d,OUT0=%d",OUT[3],OUT[2],OUT[1],OUT[0]);

 end
 
endmodule





