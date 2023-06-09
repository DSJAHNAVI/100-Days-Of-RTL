module fs_nand_tb();
  reg a,b,bin;
  wire diff,borrow;
  integer i;
fs_nand dut(a,b,bin,diff,borrow);
  initial begin
    for(i=0;i<8;i=i+1) begin
      {a,b,bin}=i;
      #100;
    end
  end
endmodule

