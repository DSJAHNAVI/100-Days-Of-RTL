module vedic_mul_bit2(a,b,q);
    input [1:0] a,b;
    output [3:0] q;
wire [3:0]s;

assign q[0]= a[0] & b[0];
assign s[0] = a[1] & b[0];
assign s[1]= a[0] & b[1];
assign q[1] = s[0]^s[1];
assign s[2] = s[0]&s[1];
assign s[3]= a[1]&b[1];
assign q[2]= s[2]^s[3];
assign q[3]= s[2]&s[3];

endmodule