module ha_nand_tb();
  reg a,b;
  wire sum,carry;
  integer i;
ha_nand dut(a,b,sum,carry);
  initial begin
    for(i=0;i<4;i=i+1) begin
      {a,b}=i;
      #100;
    end
  end
endmodule

