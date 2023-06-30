module vedic_mul_bit4_tb();
    reg [3:0] A,B;
    wire [7:0] P;
	integer i;
	vedic_mul_bit4 VMB(A,B,P);
	
	initial begin
	A = 4'b1010;
	for(i=0;i<16;i=i+1)
	begin
	B = i; #10;
	end
	end
endmodule
