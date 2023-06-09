module hs_nand_tb();
  reg a,b;
  wire diff,borrow;
  integer i;
hs_nand dut(a,b,diff,borrow);
  initial begin
    for(i=0;i<4;i=i+1) begin
      {a,b}=i;
      #100;
    end
  end
endmodule


