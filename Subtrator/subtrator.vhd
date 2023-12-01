library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is
	generic (
		W : integer := 8
	);
	port (
		a		 : in std_logic_vector ((W-1) downto 0);
		b		 : in std_logic_vector ((W-1) downto 0);
		result : out std_logic_vector ((W-1) downto 0)
	);
end entity;

architecture rtl of subtrator is
begin

	process(a,b)
	begin
			result <= std_logic_vector(unsigned(a) - unsigned(b));
	end process;
end rtl;