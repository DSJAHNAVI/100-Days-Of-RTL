module four_bit_parallel_adder_tb();
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]sum;
  wire [3:0]cout;
  integer i;

four_bit_parallel_adder dut(a,b,cin,sum,cout);
  initial begin
    for(i=0;i<8;i=i+1)
      begin
        {a,b,cin} = i;
        #10;
      end
  end
endmodule
