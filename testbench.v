`timescale 1ns/1ps
module Testbench;
reg [3:0] I = 4'b0000;
wire [3:1] O = 4'b000;

voter_if UUT (.I(I),.O(O));
initial begin
#50 I = 4'b0000; 
#50 I = 4'b0001; 
#50 I = 4'b0010; 
#50 I = 4'b0011; 
#50 I = 4'b0100; 
#50 I = 4'b0101; 
#50 I = 4'b0110;
#50 I = 4'b0111;
#50 I = 4'b1000;
#50 I = 4'b1001;
#50 I = 4'b1010;
#50 I = 4'b1011;
#50 I = 4'b1100;
#50 I = 4'b1101;
#50 I = 4'b1110;
#50 I = 4'b1111;
#50 $finish;
end

initial begin
    $dumpfile("simple.vcd");
    $dumpvars(0, UUT);
end
endmodule
