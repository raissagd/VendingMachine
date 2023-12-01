library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;	

entity datapath is
    port (
          Produto_selecionado: in std_logic_vector(2 downto 0);
		  Dinheiro: in std_logic_vector(7 downto 0);
		  CLOCK: in std_logic;
		  Produto_selecionado_ld: in std_logic;
		  Produto_selecionado_clr: in std_logic;
		  Dinheiro_total_ld: in std_logic;
		  Dinheiro_total_clr: in std_logic;
		  Mensagem_clr: in std_logic; -- nao ta no tp
		  Mensagem_ld: in std_logic; -- nao ta no tp
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
end datapath;

architecture arch of datapath is
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
	 
	 component comparador
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
	 end component;
	 
	 component somador 
		 generic (
			W : integer := 8
		 );
		 port (
			a	   : in std_logic_vector((W-1) downto 0);
			b	   : in std_logic_vector((W-1) downto 0);
			result: out std_logic_vector((W-1) downto 0)
		 );
	 end component;
	 
	 component subtrator
		 generic (
			W : integer := 8
		 );
		 port(
			a 	   : in std_logic_vector((W-1) downto 0);
			b	   : in std_logic_vector((W-1) downto 0);
			result: out std_logic_vector((W-1) downto 0)
		 );
	 end component;

    component BCD_7seg
		port (
			entrada: in std_logic_vector (2 downto 0);
			saida: out std_logic_vector (6 downto 0)
		);
    end component;
	 
	 component ROM
		port (
			endereco: in std_logic_vector(2 downto 0);
			preco   : out std_logic_vector(7 downto 0)
		);
	 end component;
	 
	-- sinais internos
	signal fio_produto_selecionado: std_logic_vector(2 downto 0);
	signal fio_valor_dinheiro_atual: std_logic_vector(7 downto 0);
	signal fio_somador_dinheiro_atual: std_logic_vector(7 downto 0);
	signal fio_mensagem_display: std_logic_vector(2 downto 0);
	signal fio_preco_produto: std_logic_vector(7 downto 0);
	
begin
   -- Instância dos componentes
	Reg_Produto: registrador
        generic map(
            W => 3
        )
        port map(
			  reset => Produto_selecionado_clr,
			  clock => CLOCK,
			  load  => Produto_selecionado_ld,
			  enable => '1',
			  D      => Produto_selecionado,
			  Q      => fio_produto_selecionado
        );
		  
   Reg_Dinheiro: registrador
        generic map(
            W => 8
        )
        port map(
			  reset => Dinheiro_total_clr,
			  clock => CLOCK,
			  load  => Dinheiro_total_ld,
			  enable => '1',
			  D      => fio_somador_dinheiro_atual,
			  Q      => fio_valor_dinheiro_atual
        ); 
		  
   Reg_Mensagem: registrador 
        generic map(
            W => 3
        )
        port map(
			  reset => Mensagem_clr,
			  clock => CLOCK,
			  load  => Mensagem_ld,
			  enable => '1',
			  D      => Mensagem_do_sistema,
			  Q      => fio_mensagem_display
        );
	
	Comparador_prod_valido: comparador
		generic map (
			W => 8
		)
		port map (
			a => fio_preco_produto,
			b => (others => '0'),
			igual => Preco_eq_0 -- não sei se pode simplesmente nao mapear as outras portas
		);
		
	Comparador_preco: comparador
		generic map (
			W => 8
		)
		port map(
			a => fio_valor_dinheiro_atual,
			b => fio_preco_produto,
			maior	=> DgtP,
			menor	=> DltP,
			igual	=> DeqP
		);
		
	Comparador_entrada_dinheiro: comparador
		generic map (
			W => 8
		)
		port map (
			a => Dinheiro,
			b => (others => '0'),
			igual => Dinheiro_eq_0 -- não sei se pode simplesmente nao mapear as outras portas
		);
	
	Rom_preco_produto: ROM
		port map(
			endereco => fio_produto_selecionado,
			preco    => fio_preco_produto
		);
		
	Somador_dinheiro: somador
		 generic map(
			  W => 8
		 )
		 port map(
			  a => fio_valor_dinheiro_atual,
			  b => Dinheiro,
			  result => fio_somador_dinheiro_atual
		 );
		 
	Subtrator_troco: subtrator
		 generic map(
			W => 8
		 )
		 port map(
			a => fio_valor_dinheiro_atual,
			b => fio_preco_produto,
			result => Troco
		 );
		 
   BCD_Display: BCD_7seg 
		port map (
        entrada => fio_mensagem_display,
		  saida => Display
		);
		
end arch;
