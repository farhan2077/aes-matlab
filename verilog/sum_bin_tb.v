module sum_bin_tb();

reg a, b;
wire c;

initial
begin
#0    a = 1'b0;    b = 1'b0;
#10   a = 1'b0;    b = 1'b1;
#10   a = 1'b1;    b = 1'b0;
#10   a = 1'b1;    b = 1'b0;
end

sum_bin sum_bin_ins(.a(a), .(b)b, .c(c));

endmodule