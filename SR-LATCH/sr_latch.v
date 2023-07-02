module sr_latch(input s,r, output q, qbar);//nor
    assign q    = ~(r | qbar);
    assign qbar = ~(s | q);
endmodule


/*module sr_latch(input s,r, output q, qbar);//nand
    assign q    = ~(r & qbar);
    assign qbar = ~(s & q);
endmodule*/
