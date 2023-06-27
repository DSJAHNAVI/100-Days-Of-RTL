module ex3_BCD(input x1,x2,x3,x4, output reg b1,b2,b3,b4);
always@(*)
begin
if({x1,x2,x3,x4}<13 && {x1,x2,x3,x4}>2)
begin
 b1 = ~x4;
 b2 = x3^x4;
 b3 = (~x2 & ~x3) | (~x2 & ~x4) | (x2 & x3 & x4);
 b4 = (x1 & x3 & x4) | (x1 & x2);
end 
else
 {b1,b2,b3,b4} = 4'bxxxx;
end
endmodule
