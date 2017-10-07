include "MUX4_1.v";

module stimulus;

reg I0,I1,I2,I3;
reg S1,S0;

wire OUT;

 MUX4_1 mux(OUT,S0,S1,I0,I1,I2,I3);
initial
begin 
    I0=1'b1;I1=1'b0;I2=1'b1;I3=1'b0;
   #1 $display("I0= %b,I1=%b,I2=%b,I3=%b\n",I0,I1,I2,I3);

  //choose I0
  S0=0;S1=0;
   #1 $display("S1=%b,S0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);
   
     //choose I1
   S0=1;S1=0;
   #1 $display("S1=%b,S0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);


     //choose I2
   S0=0;S1=1;
   #1 $display("S1=%b,S0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);

    //choose I3
   S0=1;S1=1;
   #1 $display("S1=%b,S0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);

end

endmodule
