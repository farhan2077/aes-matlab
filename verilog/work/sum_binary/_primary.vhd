library verilog;
use verilog.vl_types.all;
entity sum_binary is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end sum_binary;
