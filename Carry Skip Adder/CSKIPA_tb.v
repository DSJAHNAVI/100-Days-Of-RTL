module CSKIPA_tb();
    reg [3:0]A;
    reg [3:0]B;
    reg Cin;
    wire [3:0]S;
    wire Cout;

    CSKIPA dut(A,B,Cin,S,Cout);
    initial begin 
    A = 4'b1010; B = 4'b0100; Cin = 1; #50;
    A = 4'b1010; B = 4'b0101; Cin = 1; #50;
    A = 4'b1010; B = 4'b1101; Cin = 0; #50;
    A = 4'b1010; B = 4'b1111; Cin = 0; #50;

  $finish;
    end
endmodule