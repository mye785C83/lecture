`timescale 1ns / 1ps

module nand_gate_4_A_tb();

    reg aa, bb, cc, dd, clk;
    wire e;

    nand_gate_4_A set(aa, bb, cc, dd, e);

    initial begin
        aa = 1'b0;
        bb = 1'b0;
        cc = 1'b0;
        dd = 1'b0;
        clk = 1'b1;
    end

    always begin
        clk = #25 ~clk;
    end

    always @(posedge clk) begin
        aa <= #350 ~aa;
        bb <= #150 ~bb;
        cc <= #50 ~cc;
        dd <= ~dd;
    end

    initial begin
        #1000
        $finish;
    end

endmodule
