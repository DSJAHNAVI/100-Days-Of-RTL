module mux2x1_tb();
	reg i0,i1,s0;
	wire out;
    integer i;
mux2x1 dut(i0,i1,s0,out);
  initial begin
    for(i=0;i<8;i=i+1)
      begin
        {s0,i0,i1} = i;
        #10;
      end
  end
endmodule
