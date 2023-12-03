library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ROM is
    port (
        endereco : in  std_logic_vector(2 downto 0);
        preco: out std_logic_vector(7 downto 0)
    );
end ROM;

architecture rtl of ROM is
    type ROM_type is array (0 to 7) of std_logic_vector(7 downto 0);
    constant ROM_data : ROM_type := (
        x"00", -- produto inválido
        x"01", -- Para produto 1
        x"02", -- Para produto 2
        x"03", -- Para produto 3
        x"04", -- Para produto 4
        x"05", -- Para produto 5
        x"08", -- Para produto 6
        x"0A"  -- Para produto 7
    );
begin
    preco <= ROM_data(to_integer(unsigned(endereco)));
end rtl;
