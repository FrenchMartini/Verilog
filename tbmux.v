`timescale 1ns / 1ps 
module tbmux;
    reg [7:0] in;
    reg [3:0] sel;
    wire out;
    
    mux8to1 uut(
        .in(in),
        .sel(sel);
        .out(out),
    );
    initial begin 
        $dumpfile("mux8to1.vcd");
        $dumpvars(0, tbmux);
        in = 8'b11010101;   
        sel = 3'b000; #10; 
        sel = 3'b001; #10;  
        sel = 3'b010; #10;  
        $finish
    end
endmodule


