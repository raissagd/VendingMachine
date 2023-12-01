library ieee;
use ieee.std_logic_1164.all;

entity tb_Controladora is
end tb_Controladora;

architecture testbench of tb_Controladora is

  signal RESET, CLOCK, Confirmar, DltP, DeqP, DgtP, Preco_eq_0, Dinheiro_eq_0: std_logic;
  signal Troco_ativado, Produto_liberado, Produto_selecionado_clr, Produto_selecionado_ld, Mensagem_ld, Mensagem_clr, Dinheiro_total_ld, Dinheiro_total_clr: std_logic;
  signal Mensagem_do_sistema: std_logic_vector(2 downto 0);

  component Controladora
    port (
      RESET, CLOCK, Confirmar, DltP, DeqP, DgtP, Preco_eq_0, Dinheiro_eq_0: in std_logic;
      Troco_ativado, Produto_liberado, Produto_selecionado_clr, Produto_selecionado_ld, Mensagem_ld, Mensagem_clr, Dinheiro_total_ld, Dinheiro_total_clr: out std_logic;
      Mensagem_do_sistema: out std_logic_vector(2 downto 0)
    );
  end component;

begin

  uut: Controladora port map (
    RESET => RESET,
    CLOCK => CLOCK,
    Confirmar => Confirmar,
    DltP => DltP,
    DeqP => DeqP,
    DgtP => DgtP,
    Preco_eq_0 => Preco_eq_0,
    Dinheiro_eq_0 => Dinheiro_eq_0,
    Troco_ativado => Troco_ativado,
    Produto_liberado => Produto_liberado,
    Produto_selecionado_clr => Produto_selecionado_clr,
    Produto_selecionado_ld => Produto_selecionado_ld,
    Mensagem_ld => Mensagem_ld,
    Mensagem_clr => Mensagem_clr,
    Dinheiro_total_ld => Dinheiro_total_ld,
    Dinheiro_total_clr => Dinheiro_total_clr,
    Mensagem_do_sistema => Mensagem_do_sistema
  );

  -- Geração de Clock
  process
  begin
    CLOCK <= '0', '1' after 10 ns;
    wait for 20 ns;
  end process;

  -- Geração do Reset
  process
  begin
    RESET <= '1';
    wait for 20 ns;
    RESET <= '0';
    wait;
  end process;

  process
	 begin
	 wait for 15 ns;
	 
    -- estado inicial
	Confirmar <= '0';
	Preco_eq_0 <= '1';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado validaProduto
	Confirmar <= '0';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;

	-- estado confirma
	Confirmar <= '0';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;

	-- estado cancela
	Confirmar <= '0';
	Preco_eq_0 <= '1';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
---------------------------

    -- estado inicial
	Confirmar <= '0';
	Preco_eq_0 <= '1';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado validaProduto
	Confirmar <= '0';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;

	-- estado confirma
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado espera
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '1';	
	wait for 20 ns;
	
	-- estado calcula
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '0';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '1';	
	wait for 20 ns;
	
	-- estado espera (continua pedindo dinheiro)
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '1';	
	wait for 20 ns;
	
	-- estado calcula 
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '0';
   DgtP <= '1';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado espera (aciona troco e entrega)
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '1';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
---------------------------
	
    -- estado inicial
	Confirmar <= '0';
	Preco_eq_0 <= '1';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado validaProduto (produto inválido)
	Confirmar <= '0';
	Preco_eq_0 <= '1';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado validaProduto
	Confirmar <= '0';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;

	-- estado confirma
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado espera
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '0';
   DltP <= '1';	
	wait for 20 ns;
	
	-- estado calcula
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '0';
   DgtP <= '0';
   DeqP <= '1';
   DltP <= '0';	
	wait for 20 ns;
	
	-- estado espera (aciona entrega)
	Confirmar <= '1';
	Preco_eq_0 <= '0';
	Dinheiro_eq_0 <= '1';
   DgtP <= '0';
   DeqP <= '1';
   DltP <= '0';	
	wait for 20 ns;
   wait;
  end process;
end testbench;