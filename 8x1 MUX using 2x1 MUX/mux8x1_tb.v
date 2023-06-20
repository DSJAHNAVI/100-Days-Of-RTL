module mux8x1_tb();
reg [7:0]i;
reg [2:0]s;
wire out;
mux8x1 uut(i,s,out);
  initial begin
  i = 8'b10110110; s = 3'b000;#10;
  i = 8'b10110110; s = 3'b001;#10;
  i = 8'b10110110; s = 3'b010;#10;
  i = 8'b10110110; s = 3'b011;#10;
  i = 8'b10110110; s = 3'b100;#10;
  i = 8'b10110110; s = 3'b101;#10;
  i = 8'b10110110; s = 3'b110;#10;
  i = 8'b10110110; s = 3'b111;#10;
  end
endmodule
