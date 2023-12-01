library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_comparador is
end tb_comparador;

architecture teste of tb_comparador is
   constant W : integer := 8;
component comparador is 
	generic (
		W : integer := 8
	);
	port (
		a	   : in std_logic_vector((W-1) downto 0);
		b  	: in std_logic_vector((W-1) downto 0);
		maior	: out std_logic;
		menor	: out std_logic;
		igual	: out std_logic
	);

end component;

signal fio_A, fio_B: std_logic_vector(W-1 downto 0);
signal fio_maior, fio_menor, fio_igual: std_logic;

begin
	instancia_comparador: comparador 
	generic map (
		W => 8
	) 
	port map (
		a=>fio_A,
		b=>fio_B,
		maior=>fio_maior, 
		menor=>fio_menor,
		igual=>fio_igual
	);

	fio_A <= x"00", x"08" after 20 ns, x"07" after 40 ns, x"04" after 60 ns;
	fio_B <= x"00", x"07" after 10 ns, x"08" after 30 ns, x"01" after 50 ns;
end teste;