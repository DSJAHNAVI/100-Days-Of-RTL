module four_bit_add_sub_tb();
  reg [3:0]a;
  reg [3:0]b;
  reg C;
  wire [3:0]z;
  wire [3:0]cout;

four_bit_add_sub dut(a,b,C,z,cout);
  initial begin
    a=4'b1010; b=4'b0101; C=1'b0; 
    #10;
    a=4'b1010; b=4'b0101; C=1'b1; 
    #10;
    a=4'b1100; b=4'b0111; C=1'b0; 
    #10;
    a=4'b1100; b=4'b0111; C=1'b1; 
    #10;
  end
endmodule
