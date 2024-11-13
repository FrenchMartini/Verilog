module comparator(A,B,gt,lt,eq);
    input[3:0] A,B;
    output reg gt,lt,eq;

    always @(A,B)  
    begin
    if(A>B)
        begin     
            gt=1;
            lt=0;
            eq=0;
        end
    else if(A<B)
        begin 
            gt=0;
            lt=1;
            eq=0;
        end
    else
        begin 
            gt=0;
            lt=0;
            eq=0;
        end

    end
endmodule

iverilog -o comparator_tb tb_comparator.v comparator.v
vvp comparator_tb
gtkwave comparator.vcd

