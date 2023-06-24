module decoder3x8(input x,y,z, output [7:0]d);
assign d[0] =  ~x & ~y & ~z;
assign d[1] =  ~x & ~y &  z;
assign d[2] =  ~x &  y & ~z;
assign d[3] =  ~x &  y &  z;
assign d[4] =   x & ~y & ~z;
assign d[5] =   x & ~y &  z;
assign d[6] =   x &  y & ~z;
assign d[7] =   x &  y &  z;
endmodule
