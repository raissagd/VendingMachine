 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador is
    generic (
        W : integer := 8
    );
    port (
        reset   : in std_logic;
        clock   : in std_logic;
        load    : in std_logic;
        enable  : in std_logic;
        D       : in std_logic_vector(W-1 downto 0);
        Q       : out std_logic_vector(W-1 downto 0)
    );
end registrador;

architecture RTL of registrador is
    signal registro : std_logic_vector(W-1 downto 0) := (others => '0');
begin
    process (clock, reset)
    begin
        if reset = '1' then
            registro <= (others => '0');
        elsif rising_edge(clock) then
            if enable = '1' then
                if load = '1' then
                    registro <= D;
                end if;
            end if;
        end if;
    end process;

    Q <= registro;
end RTL;