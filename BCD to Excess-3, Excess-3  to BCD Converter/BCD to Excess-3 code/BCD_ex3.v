module BCD_ex3(input b1,b2,b3,b4, output reg x1,x2,x3,x4);
always@(*) begin
if({b1,b2,b3,b4}<10)
begin
x1 = (b1) | (b2 & b3) | (b2 & b4);
x2 = (~b2 & b3) | (~b2 & b4) | (b2 & ~b3 & ~b4);
x3 = (b3 & b4) | (~b3 & ~b4);
x4 = ~b4;
end
else
{x4,x3,x2,x1} = 4'bxxxx;
end
endmodule
