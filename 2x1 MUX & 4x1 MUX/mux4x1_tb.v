module mux4x1_tb();
  reg i0,i1,i2,i3;
        reg [1:0]sel;
  wire out;
    integer i;
mux4x1 dut(i0,i1,i2,i3,sel,out);
  initial begin
    for(i=0;i<64;i=i+1)
      begin
        {sel,i0,i1,i2,i3} = i;
        #10;
      end
  end
endmodule