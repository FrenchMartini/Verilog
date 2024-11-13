`timescale 1ns / 1ps
module testcounter;
    reg clk;
    reg reset;
    reg up_down;
    wire [3:0] count;

    counter uut(
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );
    //clock generation 
    always begin
        #5 clk = ~clk;
    en
    
    initial begin 
        $dumpfule("counter.vcd");
        $dumpvars(0, testcounter);

        clk=0;
        reset=1;
        up_down=1;
        #20;

        reset=0;

        #100;

        up_down=0;
        #100;
        $finish;
    end
endmodule





