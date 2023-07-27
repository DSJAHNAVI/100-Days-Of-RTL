module universal_sr_tb;
reg [3:0]parin;
reg clr,clk;
reg [0:1]sel;
wire [3:0]out;
universal_sr dut(clr,clk,sel,parin,out);
initial  begin 
clk=0;
repeat(100)
#10 clk=~clk;
end

initial  begin

parin=4'b1011;
sel=2'b01;
clr=1'b0;
#40;

parin=4'b1011;
sel=2'b10;
clr=1'b0;
#40;

parin=4'b1011;
sel=2'b11;
clr=1'b0;
#40;

parin=4'b1011;
sel=2'b00;
clr=1'b0;
#40;

end
endmodule

