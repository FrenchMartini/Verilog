`timescale 1ns / 1ps 

module tb_comparator;
    reg [3:0] A,B;
    wire gt,lt,eq;
    
    comparator uut{
        .A(A),
        .B(B),
        .gt(gt),
        .lt(lt),
        .eq(eq)
    }
    
    initial begin 
        $dumpfile("comparator.vcd);
        $dumpvars(0,tb_comparator);

        A = 4'b0010; B = 4'b0100;   
        #10; 

        
        $display("A = %b, B = %b | gt = %b, lt = %b, eq = %b", A, B, gt, lt, eq);
        $finish
    end
endmodule

iverilog -o comparator_tb tb_comparator.v comparator.v
vvp comparator_tb
gtkwave comparator.vcd


