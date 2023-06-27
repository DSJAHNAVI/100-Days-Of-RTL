module bin_2scomp_tb();
reg [7:0]a;
wire [8:0] x;

bin_2scomp dut(a,x);
initial begin  
  a = 8'b00000000;#10;
  a = 8'b00001111;#10;
  a = 8'b01101101;#10;
end
endmodule
