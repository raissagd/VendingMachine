library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_ROM is
end tb_ROM;

architecture testbench of tb_ROM is
    signal endereco_tb : std_logic_vector(2 downto 0);
    signal preco_tb : std_logic_vector(7 downto 0);

    component ROM
        port (
            endereco : in  std_logic_vector(2 downto 0);
            preco    : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    UUT : ROM
    port map (
        endereco => endereco_tb,
        preco    => preco_tb
    );

    process
    begin
        for i in 0 to 7 loop
            endereco_tb <= std_logic_vector(to_unsigned(i, 3));
            wait for 10 ns;
        end loop;
    end process;
end testbench;
