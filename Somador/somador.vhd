library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity somador is
    generic (
        W : integer := 8
    );
    port (
        a      : in  std_logic_vector(W-1 downto 0);
        b      : in  std_logic_vector(W-1 downto 0);
        result : out std_logic_vector(W-1 downto 0)
    );
end entity;

architecture rtl of somador is
begin
    process(a, b)
    begin
		result <= std_logic_vector(unsigned(a) + unsigned(b));
    end process;
end rtl;