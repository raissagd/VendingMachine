library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_bcd_7_seg is
end tb_bcd_7_seg;

architecture sim of tb_bcd_7_seg is
  signal entrada_tb: std_logic_vector(2 downto 0);
  signal saida_tb: std_logic_vector(6 downto 0);

  component Bcd_7seg
    port (
      entrada: in std_logic_vector(2 downto 0);
      saida: out std_logic_vector(6 downto 0)
    );
  end component;

begin
  UUT: Bcd_7seg 
  port map (
	entrada => entrada_tb, 
	saida => saida_tb
	);

  process
  begin
    entrada_tb <= "000"; 
    wait for 10 ns;
    
    entrada_tb <= "001"; 
    wait for 10 ns;

    entrada_tb <= "010"; 
    wait for 10 ns;
	 
    entrada_tb <= "011"; 
    wait for 10 ns;
	 
    entrada_tb <= "100"; 
    wait for 10 ns;
	 
	 entrada_tb <= "101"; 
    wait for 10 ns;
	 
	 entrada_tb <= "110"; 
    wait for 10 ns;
	 
	 entrada_tb <= "111"; 
    wait for 10 ns;	 
  end process;
end sim;

