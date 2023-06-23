module priority_encoder(input [7:0]Y, output reg [2:0]A);

always@(*) begin
if(Y[7])
  A = 3'b111;
else if(Y[6])
  A = 3'b110;
else if(Y[5])
  A = 3'b101;
else if(Y[4])
  A = 3'b100;
else if(Y[3])
  A = 3'b011;
else if(Y[2])
  A = 3'b010;
else if(Y[1])
  A = 3'b001;
else
  A = 3'b000;
end
endmodule

