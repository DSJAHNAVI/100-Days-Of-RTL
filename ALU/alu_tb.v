module alu_tb(); 
  reg [7:0]  a,b;
  reg [3:0]  command;
  reg enable;
  wire [15:0] y;
  integer m,n,o;
  parameter ADD  = 4'b0000, // 0  Add two 4 bit numbers a and b.
            INC  = 4'b0001, // 1  Increment a by 1. 
            SUB  = 4'b0010, // 2  Subtracts b from a.
            DEC  = 4'b0011, // 3  Decrement a by 1.
            MUL  = 4'b0100, // 4  Multiply 4 bit numbers a and b.
            DIV  = 4'b0101, // 5  Divide a by b.
            SHR  = 4'b0110, // 6  Shift a to left side by 1 bit.
            SHL  = 4'b0111, // 7  Shift a to right by 1 bit.
            AND  = 4'b1000, // 8  Logical AND   
            OR   = 4'b1001, // 9  Logical OR
            INV  = 4'b1010, // 10 Compement
            NAND = 4'b1011, // 11 Logical NAND
            NOR  = 4'b1100, // 12 Logical NOR
            XOR  = 4'b1101, // 13 Logical EXOR
            XNOR = 4'b1110, // 14 Logical EXNOR
            BUF  = 4'b1111; // 15 Buffer
  reg [(4*8)-1:0] string_cmd;
  alu DUT(a,b,command,enable,y);
  task initialize;
  begin
   {a,b,command,enable}=0;
  end
  endtask
  task en_oe(input i);
  begin
    enable=i;
  end
  endtask
  task inputs(input [7:0] j,k);
  begin
    a=j;
    b=k;
  end
  endtask
  task cmd (input [3:0] l);
  begin
    command=l;
  end
  endtask
  task delay();
  begin
    #10;
  end
  endtask
  always@(command)
  begin
    case (command)
      ADD   :  string_cmd = "ADD";
      INC   :  string_cmd = "INC";
      SUB   :  string_cmd = "SUB";
      DEC   :  string_cmd = "DEC";
      MUL   :  string_cmd = "MUL";
      DIV   :  string_cmd = "DIV";
      SHR   :  string_cmd = "SHR";
      SHL   :  string_cmd = "SHL";
      AND   :  string_cmd = "AND";
      OR    :  string_cmd = "OR";
      INV   :  string_cmd = "INV";
      NAND  :  string_cmd = "NAND";
      NOR   :  string_cmd = "NOR";
      XOR   :  string_cmd = "XOR";
      XNOR  :  string_cmd = "XNOR";
      BUF   :  string_cmd = "BUF";
    endcase
  end
  initial
  begin
    initialize;
    en_oe(1'b1);
    for (m=0;m<16;m=m+1)
    begin
      for (n=0;n<16;n=n+1)
      begin
        inputs(m,n);
        for (o=0;o<16;o=o+1)
        begin
          command=o;
          delay;
        end 
      end
    end

    en_oe(0);
    inputs(8'd20,8'd10);
    cmd(ADD);
    delay;
    en_oe(1);
    inputs(8'd25,8'd17);
    cmd(ADD);
    delay;
    
    $finish;
  end

  initial $monitor("Input oe=%b, a=%b, b=%b, command=%s, Output y=%b",
                  enable,a,b,string_cmd,y);

endmodule
