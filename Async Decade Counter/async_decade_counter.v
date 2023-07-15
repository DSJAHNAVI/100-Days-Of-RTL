module async_decade_counter(input clk, rst, input [1:0]J,K, output [3:0] Q);
  
  wire w1,w2;
  
  jk_ff JK1(J[0],K[0], clk ,rst, Q[0]);
  assign w1 = ~Q[3];
  jk_ff JK2(w1,w1,Q[0],rst, Q[1]);
  
  jk_ff JK3(J[1],K[1] , Q[1] ,rst,Q[2]);
  assign w2 = Q[1]&Q[2];
  jk_ff JK4(w2 , ~w1 , Q[0] ,rst, Q[3]);

endmodule

module jk_ff(input  J, K , clk ,rst, output reg Q);
  always @(negedge clk) begin
    if(rst)
      Q <= 1'b0;
    else begin
    case({J,K})
      2'b00 : Q <= Q   ;
      2'b01 : Q <= 1'b0;
      2'b10 : Q <= 1'b1;
      2'b11 : Q <= ~Q  ;
    endcase
  end
  end
endmodule


