module full_sub_tb();
  reg a,b,bin;
  wire diff,bout;
  integer i;

full_sub FA1(a,b,bin,diff,bout);
  initial begin
    for(i=0;i<8;i=i+1)
      begin
        {a,b,bin} = i;
        #10;
      end
  end
endmodule
