module ram_4x8_tb();

reg       clk     ;
reg       rw      ;
reg  [2:0]addr    ;
reg  [3:0]data_in ;
wire [3:0]data_out;

always
#5 clk <= ~clk;

initial
begin
// WRITE
#0     clk = 0;
#10    rw = 0;    addr = 3'b000;    data_in = 4'b0000;
#10    rw = 0;    addr = 3'b001;    data_in = 4'b0001;
#10    rw = 0;    addr = 3'b010;    data_in = 4'b0010;
#10    rw = 0;    addr = 3'b011;    data_in = 4'b0011;

// READ
#10    rw = 1;    addr = 3'b000;
#10    rw = 1;    addr = 3'b001;
#10    rw = 1;    addr = 3'b010;
#10    rw = 1;    addr = 3'b011;
end

ram_4x8 ram_4x8_ins(.clk(clk), .rw(rw), .addr(addr), .data_in(data_in), .data_out(data_out));

endmodule
