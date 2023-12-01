library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity comparador is
generic (
		W : integer := 8
	);

	port (
		a	: in std_logic_vector	((W-1) downto 0);
		b	: in std_logic_vector	((W-1) downto 0);
		maior	: out std_logic;
		menor	: out std_logic;
		igual	: out std_logic
	);
end comparador;

architecture estrutural of comparador is
begin
	maior <= '1' when unsigned(a) > unsigned(b) else '0';
	menor <= '1' when unsigned(a) < unsigned(b) else '0';
	igual <= '1' when unsigned(a) = unsigned(b) else '0';
end;