module top_module ( input clk, input d, output q );
    wire a,b;
    my_dff u1(clk,d,a);
    my_dff u2(clk,a,b);
    my_dff u3(clk,b,q);
endmodule
