module booths_mul_algo(X, Y, Z);
  input signed [3:0] X, Y;
  output signed [7:0] Z;
  reg signed [7:0] Z;
  reg [1:0] temp;
  integer i;
  reg X1;
  reg [3:0] Y1;
  always @ (X, Y)
    begin
      Z = 8'd0;
      X1 = 1'd0;
      for (i = 0; i < 4; i = i + 1)
        begin
        temp = {X[i], X1};
        Y1 = - Y;
        case (temp)
          2'd2 : Z [7 : 4] = Z [7 : 4] + Y1;
          2'd1 : Z [7 : 4] = Z [7 : 4] + Y;
          default : begin end
        endcase
        Z = Z >> 1;
        Z[7] = Z[6];
        X1 = X[i];
        end
      if (Y == 4'd8)
        begin
          Z = - Z;
        end
    end
      
endmodule