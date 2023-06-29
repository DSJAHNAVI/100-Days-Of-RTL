module booths_mul_algo_tb();
  reg [3:0] X,Y;
  wire [7:0] Z;

  booths_mul_algo BMA(X,Y,Z);

  initial begin
    X = 0; Y = 0; #20;
	X = 3; Y = -6; #20;
	X = -7; Y = -4; #20;
    X =-5; Y = 7; #20;
	X = 2; Y = 4; #20;
  end
      
endmodule
