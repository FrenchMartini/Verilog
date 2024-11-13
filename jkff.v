module jkff(
    input wire clk,
    input wire reset,
    input wire j,
    input wire k,
    output reg q
);
    always @(posedge clk or posedge reset)  begin
        if(reset)
            q<=0;
        else if(j & ~k)
            q<=1;
        else if(~j & k)
            q<=0;
        else if (j & k)
            q<=~q;
    end
endmodule
