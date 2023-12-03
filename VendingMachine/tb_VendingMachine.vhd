library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_ARITH.ALL;
use ieee.STD_LOGIC_UNSIGNED.ALL;

entity tb_VendingMachine is
end tb_VendingMachine;

architecture testbench of tb_VendingMachine is
    signal CLOCK, Confirmar: std_logic := '0';
    signal Dinheiro, Troco: std_logic_vector(7 downto 0) := "00000000";
	 signal Display: std_logic_vector(6 downto 0):= "0000000";
	 signal Produto_selecionado: std_logic_vector(2 downto 0) := "000";
	 
    component VendingMachine
        port (
            CLOCK, Confirmar: in std_logic;
            Dinheiro: in std_logic_vector(7 downto 0);
            Produto_selecionado: in std_logic_vector(2 downto 0);
            Troco: out std_logic_vector(7 downto 0);
				Display: out std_logic_vector(6 downto 0)
        );
    end component;

begin
    VendingMachine_Instance: VendingMachine
        port map(
            CLOCK => CLOCK,
            Confirmar => Confirmar,
            Dinheiro => Dinheiro,
            Produto_selecionado => Produto_selecionado,
            Troco => Troco,
            Display => Display
        );

   clk_process: process
   begin
       CLOCK <= '0';
       wait for 10 ns; 
       CLOCK <= '1';
       wait for 10 ns; 
   end process;

   process
		begin
		wait for 10 ns; 
		Produto_selecionado <= "011"; -- selecionou o produto
		wait for 20 ns;
		Confirmar <= '1';
		wait for 20 ns;
		Dinheiro <= "00000011";
		wait for 20 ns;
		
		------------------------------
      wait;
	end process;
end testbench;