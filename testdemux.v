`timescale 1ns / 1ps
module testdemux;
    reg in;
    reg [3:0] sel;
    wire [7:0] out;

    demux8to1 uud{
        .in(in),
        .sel(sel),
        .out(out)
    }
    initial begin
        $dumpfile("demux_1to8.vcd");
        $dumpvars(0, tb_demux_1to8);

        
        in = 1;             
        sel = 3'b000; #10;  
        sel = 3'b001; #10;  
        sel = 3'b010; #10;  
        sel = 3'b100; #10;   
        sel = 3'b101; #10;   
        sel = 3'b110; #10;  
        sel = 3'b111; #10;   
        $finish;
    end
endmodule
