module single_port_ram_tb();

reg [7:0] data;
reg [5:0] address;
reg en,write_enable, clk;
wire [7:0] q;

single_port_ram dut(data, address, en,write_enable, clk, q);

initial begin
    clk=1'b1;
    forever #5 clk=~clk;
end

initial begin
    data= 8'h18;
    address= 6'd16;      
    en = 1'b1;write_enable= 1'b1;
    #10;
    
    data= 8'h29;
    address= 6'd12;      
    #10;
    
    data= 8'hAA;
    address= 6'd7;      
    #10;
	
	
    data= 8'hz; //read operation
    address= 6'd16;      
    write_enable= 1'b0;       
    #10;
    
    address= 6'd12;     
    #10;
    
    address= 6'd7;
    #10;
end

initial begin
$monitor("en: %b  write enable: %b  address: %d  data: %h  output: %h", en, write_enable, address, data, q);
#60 $finish;
end
endmodule

