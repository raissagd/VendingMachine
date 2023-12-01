LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity VendingMachine is
    port ( 
		CLOCK: in std_logic; 
		Confirmar: in std_logic;
		Dinheiro: in std_logic_vector(7 downto 0);
		Produto_selecionado: in std_logic_vector(2 downto 0);
		Troco: out std_logic_vector(7 downto 0);
		Display: out std_logic_vector(6 downto 0);
		Produto: out std_logic_vector(2 downto 0);
		Troco_ativado: out std_logic; 
		Produto_liberado: out std_logic 
    );
end VendingMachine;

architecture RTL OF VendingMachine is
	signal fio_DltP, fio_DeqP, fio_DgtP: std_logic;
	signal fio_Dinheiro_eq_0, fio_Preco_eq_0: std_logic;
	signal fio_Produto_selecionado_clr, fio_Produto_selecionado_ld: std_logic;
	signal fio_Dinheiro_total_ld, fio_Dinheiro_total_clr: std_logic;
	signal fio_Preco_ld, fio_Preco_clr: std_logic;
	signal fio_Mensagem_clr, fio_Mensagem_ld: std_logic;
	signal fio_Mensagem_do_sistema: std_logic_vector(2 downto 0);
	
	component Controladora 
    port (
		 RESET, CLOCK, Confirmar: in std_logic;
		 DltP, DeqP, DgtP, Preco_eq_0, Dinheiro_eq_0: in std_logic;
		 Troco_ativado, Produto_liberado: out std_logic;
		 Produto_selecionado_clr, Produto_selecionado_ld, Mensagem_ld, Mensagem_clr, Dinheiro_total_ld, Dinheiro_total_clr: out std_logic;
		 Mensagem_do_sistema: out std_logic_vector(2 downto 0)
		 );
	end component;
		  
	component DataPath 
		port ( 
			Produto_selecionado: in std_logic_vector(2 downto 0);
			Dinheiro: in std_logic_vector(7 downto 0);
			CLOCK: in std_logic;
			Produto_selecionado_ld: in std_logic;
			Produto_selecionado_clr: in std_logic;
			Dinheiro_total_ld: in std_logic;
			Dinheiro_total_clr: in std_logic;
			Mensagem_clr: in std_logic; 
			Mensagem_ld: in std_logic;
			Mensagem_do_sistema: in std_logic_vector(2 downto 0);
					
			DgtP: out std_logic;
			DltP: out std_logic;
			DeqP: out std_logic;
			Preco_eq_0: out std_logic;
			Dinheiro_eq_0: out std_logic;
			Troco : out std_logic_vector(7 downto 0);
			Produto: out std_logic_vector(2 downto 0);
			Display : out std_logic_vector(6 downto 0)
		);
	end component;

	begin
		
		DPath: DataPath
			port map(
				Produto_selecionado          => Produto_selecionado,
				Dinheiro                     => Dinheiro,
				CLOCK                        => CLOCK,
				
				Produto_selecionado_ld       => fio_Produto_selecionado_ld,
				Produto_selecionado_clr      => fio_Produto_selecionado_clr,
				Dinheiro_total_ld            => fio_Dinheiro_total_ld,
				Dinheiro_total_clr           => fio_Dinheiro_total_clr,
				Mensagem_clr                 => fio_Mensagem_clr,
				Mensagem_ld                  => fio_Mensagem_ld,
				Mensagem_do_sistema          => fio_Mensagem_do_sistema,
				DgtP                         => fio_DgtP,
				DltP                         => fio_DltP,
				DeqP                         => fio_DeqP,
				Preco_eq_0                   => fio_Preco_eq_0,
				Dinheiro_eq_0                => fio_Dinheiro_eq_0,
				
				Troco                        => Troco,
				Produto                      => Produto,
				Display                      => Display
			);
	
		Ctrl: Controladora
			port map(
				CLOCK                        => CLOCK,
				Confirmar                    => Confirmar,
				RESET								  => '0',
				
				DltP                         => fio_DltP,
				DeqP                         => fio_DeqP,
				DgtP                         => fio_DgtP,
				Preco_eq_0                   => fio_Preco_eq_0,
				Dinheiro_eq_0                => fio_Dinheiro_eq_0,
				Produto_selecionado_clr      => fio_Produto_selecionado_clr,
				Produto_selecionado_ld       => fio_Produto_selecionado_ld,
				Dinheiro_total_ld            => fio_Dinheiro_total_ld,
				Dinheiro_total_clr           => fio_Dinheiro_total_clr,
				Mensagem_clr                 => fio_Mensagem_clr,
				Mensagem_ld                  => fio_Mensagem_ld,
				Mensagem_do_sistema          => fio_Mensagem_do_sistema,
				
				Troco_ativado                => Troco_ativado, 
				Produto_liberado             => Produto_liberado 
			);
end RTL ;