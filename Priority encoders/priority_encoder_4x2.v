module priority_encoder_4x2(input [3:0]Y, output reg [1:0]A);
always@(*) begin
if(Y[3])
  A = 2'b11;
else if(Y[2])
  A = 2'b10;
else if(Y[1])
  A = 2'b01;
else if(Y[0])
  A = 2'b00;
else
  A = 2'b00;
end
endmodule


