module bcd_segment7(A,B,C,D, seg7);
input A,B,C,D;
output reg [6:0]seg7;

always@(*)
begin
 if({A,B,C,D}<=9) begin
    seg7[6] = ~(B^D) | A | C;
	seg7[5] = ~(C^D) | ~B;
	seg7[4] = B | D | ~C;
	seg7[3] = (~B&~D) | (~B&C) | (B&~C&D) | (C&~D) | A;
	seg7[2] = (~B&~D) | (C&~D);
	seg7[1] = (B&~D) | (B&~C) | (~C&~D) | A;
	seg7[0] = (B^C) | A | (B&~D);
	end
 else
    seg7 = 7'b0000000;
end
endmodule
 
