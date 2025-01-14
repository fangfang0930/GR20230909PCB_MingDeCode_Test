library verilog;
use verilog.vl_types.all;
entity crc_10 is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        clr             : in     vl_logic;
        valid           : in     vl_logic;
        indata          : in     vl_logic;
        crc_sum         : out    vl_logic_vector(9 downto 0)
    );
end crc_10;
