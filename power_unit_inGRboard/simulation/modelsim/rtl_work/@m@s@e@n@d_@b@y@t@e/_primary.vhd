library verilog;
use verilog.vl_types.all;
entity MSEND_BYTE is
    generic(
        S_IDLE          : integer := 0;
        S_NOP_0         : integer := 1;
        S_LD2RSR        : integer := 2;
        S_ACC           : integer := 3;
        S_SEND          : integer := 4;
        S_CHECK         : integer := 5;
        S_NOP_1         : integer := 6;
        S_DONE          : integer := 7
    );
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        unit_en         : in     vl_logic;
        send_start      : in     vl_logic;
        send_data       : in     vl_logic_vector(23 downto 0);
        sending         : out    vl_logic;
        send_done       : out    vl_logic;
        sent            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S_IDLE : constant is 1;
    attribute mti_svvh_generic_type of S_NOP_0 : constant is 1;
    attribute mti_svvh_generic_type of S_LD2RSR : constant is 1;
    attribute mti_svvh_generic_type of S_ACC : constant is 1;
    attribute mti_svvh_generic_type of S_SEND : constant is 1;
    attribute mti_svvh_generic_type of S_CHECK : constant is 1;
    attribute mti_svvh_generic_type of S_NOP_1 : constant is 1;
    attribute mti_svvh_generic_type of S_DONE : constant is 1;
end MSEND_BYTE;
