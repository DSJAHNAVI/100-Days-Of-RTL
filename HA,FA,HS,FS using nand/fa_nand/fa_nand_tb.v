module fa_nand_tb();
  reg a,b,cin;
  wire sum,carry;
  integer i;
fa_nand dut(a,b,cin,sum,carry);
  initial begin
    for(i=0;i<8;i=i+1) begin
      {a,b,cin}=i;
      #100;
    end
  end
endmodule
