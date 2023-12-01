library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_registrador is
end tb_registrador;

architecture testbench of tb_registrador is
    component registrador
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
    end component;
    
    constant W: integer := 4;
    signal fio_reset, fio_clock, fio_load, fio_enable: std_logic := '0';
    signal fio_D, fio_Q: std_logic_vector(W - 1 downto 0);

begin
    registrador_instance: registrador 
	  generic map(W) 
	  port map(
			reset   => fio_reset,
			clock   => fio_clock,
			load    => fio_load,
			enable  => fio_enable,
			D       => fio_D,
			Q       => fio_Q
	  );

    estimulo: process
    begin
        fio_reset <= '1';
        fio_load <= '0';
        fio_enable <= '0';
        fio_D <= x"0";
        wait for 10 ns;

        fio_reset <= '0';
        fio_load <= '1';
        fio_enable <= '1';
        fio_D <= x"2";
        wait for 10 ns;

        fio_reset <= '0';
        fio_load <= '1';
        fio_enable <= '0';
        fio_D <= x"3"; 
        wait for 10 ns;
        
        fio_reset <= '0';
        fio_load <= '0';
        fio_enable <= '1';
        fio_D <= x"4"; 
        wait for 10 ns;
        
        fio_reset <= '0';
        fio_load <= '1';
        fio_enable <= '1';
        fio_D <= x"5";
        wait for 10 ns;
    end process;
	 
	 clock_process: process
    begin
        while now < 80 ns loop
            wait for 5 ns;
            fio_clock <= not fio_clock;
        end loop;
        wait;
    end process;
	 
end testbench;