module demux1x4_tb();
  reg [1:0]s;
  reg d;
  wire [3:0]y;
  integer i;
demux1x4 dut(s,d,y);
  initial begin
    for(i = 0;i<8;i = i+1) begin
      {s[1],s[0],d} = i;
        #10;
    end
  end
endmodule