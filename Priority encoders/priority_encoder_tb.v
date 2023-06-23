module priority_encoder_tb();
reg [7:0]Y;
wire [2:0]A;

priority_encoder dut(Y,A);
initial begin
  Y=8'b00000001;#10; 
  Y=8'b0000001x;#10;
  Y=8'b000001xx;#10; 
  Y=8'b00001xxx;#10; 
  Y=8'b0001xxxx;#10; 
  Y=8'b001xxxxx;#10; 
  Y=8'b01xxxxxx;#10; 
  Y=8'b1xxxxxxx;#10; 
end

endmodule 

