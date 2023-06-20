module mux8x1(input [7:0]i, input [2:0]s, output out);
 wire [6:1]w;

 mux2x1 dut1(i[0],i[1],s[0],w[1]);
 mux2x1 dut2(i[2],i[3],s[0],w[2]);
 mux2x1 dut3(i[4],i[5],s[0],w[3]);
 mux2x1 dut4(i[6],i[7],s[0],w[4]);
 mux2x1 dut5(w[1],w[2],s[1],w[5]);
 mux2x1 dut6(w[3],w[4],s[1],w[6]);
 mux2x1 dut7(w[5],w[6],s[2],out);

endmodule

module mux2x1(input i0,i1,s, output reg out ); 
  always @(*) begin
    if(s)
      out = i1;
    else
      out = i0;
  end
endmodule



