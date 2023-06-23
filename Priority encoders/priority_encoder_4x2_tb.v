module priority_encoder_tb();
reg [3:0]Y;
wire [1:0]A;

priority_encoder dut(Y,A);
initial begin
  Y=4'b0001;#10; 
  Y=4'b001x;#10;
  Y=4'b01xx;#10; 
  Y=4'b1xxx;#10; 
end
endmodule 
