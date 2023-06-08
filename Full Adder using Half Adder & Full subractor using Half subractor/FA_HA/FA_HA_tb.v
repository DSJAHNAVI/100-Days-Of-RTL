module FA_HA_tb();
  reg a,b,cin;
  wire sout,cout;
  integer i;


FA_HA dut(a,b,cin,sout,cout);
  initial begin
    for(i=0; i<8; i=i+1) begin
     {a,b,cin} = i;
     #100;
    end
  end
endmodule
	
	