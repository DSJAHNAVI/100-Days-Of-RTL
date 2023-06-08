module FS_HS_tb();
  reg a,b,bin;
  wire dout,bout;
  integer i;

FS_HS dut(a,b,bin,dout,bout);
  initial begin
    for(i=0; i<8; i=i+1) begin
     {a,b,bin} = i;
     #100;
    end
  end
endmodule
