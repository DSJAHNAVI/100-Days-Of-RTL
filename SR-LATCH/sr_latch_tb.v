module sr_latch_tb;
reg s, r;     
wire q, qbar;
sr_latch latch(s, r, q, qbar);
initial begin
    // case 1 (latch w/o state)
    s=0; r=0; #10;
    // case 2 (reset)
    s=0; r=1; #10;
    // case 3 (set)
    s=1; r=0; #10;
    // case 4 (latch with state)
    s=0; r=0; #10;
    // case 5 (invalid state)
    s=1; r=1; #10;
end
endmodule
