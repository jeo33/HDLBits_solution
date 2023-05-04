module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    wire [4:0]x;
    assign x={a,b,c,d,e};
    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    assign out=~{{{5{a}}^{x}},{{5{b}}^{x}},{{5{c}}^{x}},{{5{d}}^{x}},{{5{e}}^{x}}};
endmodule
