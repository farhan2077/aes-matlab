library verilog;
use verilog.vl_types.all;
entity ram_sp_sr_sw is
    generic(
        data_width      : integer := 8;
        addr_width      : integer := 8
    );
    port(
        clk             : in     vl_logic;
        address         : in     vl_logic_vector;
        data            : in     vl_logic_vector;
        cs              : in     vl_logic;
        we              : in     vl_logic;
        oe              : in     vl_logic
    );
end ram_sp_sr_sw;
