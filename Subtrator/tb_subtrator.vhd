library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_subtrator is
end entity;

architecture testbench of tb_subtrator is
    constant W : integer := 8;

    signal a_tb, b_tb, result_tb : std_logic_vector(W-1 downto 0);

    component subtrator
        generic (
            W : integer := 8
        );
        port (
            a      : in std_logic_vector((W-1) downto 0);
            b      : in std_logic_vector((W-1) downto 0);
            result : out std_logic_vector((W-1) downto 0)
        );
    end component;

begin
    UUT: subtrator
        generic map (
            W => 8
        )
        port map (
            a => a_tb,
            b => b_tb,
            result => result_tb
        );

    process
    begin
        a_tb <= x"08";
        b_tb <= x"03";
        wait for 10 ns;

        a_tb <= x"25";
        b_tb <= x"16";
        wait for 10 ns;

        a_tb <= x"19";
        b_tb <= x"07";
        wait for 10 ns;

        a_tb <= x"11";
        b_tb <= x"04";
        wait for 10 ns;
    end process;
end testbench;
