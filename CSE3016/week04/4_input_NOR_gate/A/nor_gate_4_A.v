`timescale 1ns / 1ps

module nor_gate_4_A(a, b, c, d, e);
    input a, b, c, d;
    output e;

    assign e = ~(a|b|c|d);
endmodule
