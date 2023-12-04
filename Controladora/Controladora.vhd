library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controladora is
    port (
		 RESET, CLOCK, Confirmar: in std_logic;
		 DltP, DeqP, DgtP, Preco_eq_0, Dinheiro_eq_0: in std_logic;
		 Produto_liberado: out std_logic;
		 Produto_selecionado_clr, Produto_selecionado_ld, Mensagem_ld, Mensagem_clr, Dinheiro_total_ld, Dinheiro_total_clr, Troco_clr, Troco_ld: out std_logic;
		 Mensagem_do_sistema: out std_logic_vector(2 downto 0)
		 );
end Controladora;

architecture arch of Controladora is
    type state_type is (inicio, validaProduto, confirma, cancela, espera, calcula, troco, entrega);
	 signal state, next_state: state_type;
	 
begin
   	process (state, Confirmar, DltP, DeqP, DgtP, Preco_eq_0, Dinheiro_eq_0)
		begin
			case state is
				when inicio =>
						Produto_selecionado_ld <= '0';
						Produto_selecionado_clr <= '1';
						Mensagem_do_sistema <= "001";
						Mensagem_ld <= '1';
						Mensagem_clr <= '0';
						Dinheiro_total_ld <= '0';
						Dinheiro_total_clr <= '1';
						Troco_clr <= '1';
						Troco_ld <= '0';
						Produto_liberado <= '0';
						next_state <= validaProduto;
					
				when validaProduto =>
						Produto_selecionado_clr <= '0';
						Mensagem_clr <= '0';
						Dinheiro_total_ld <= '0';
						Dinheiro_total_clr <= '1';
						Produto_liberado <= '0';
						Troco_clr <= '0';
						Troco_ld <= '0';
						if Preco_eq_0 = '1' then
							Produto_selecionado_ld <= '1';
							Mensagem_do_sistema <= "010";
							Mensagem_ld <= '1';
							next_state <= validaProduto;
						elsif Preco_eq_0 = '0' then
							Produto_selecionado_ld <= '0';
							Mensagem_ld <= '0';
							next_state <= confirma;
						else
							Produto_selecionado_ld <= '0';
							Mensagem_ld <= '1';
							next_state <= cancela;
						end if;
						 
				when confirma =>
						Produto_selecionado_ld <= '0';
						Produto_selecionado_clr <= '0';
						Mensagem_do_sistema <= "011";
						Mensagem_ld <= '1';
						Mensagem_clr <= '0';
						Dinheiro_total_ld <= '0';
						Dinheiro_total_clr <= '1';
						Produto_liberado <= '0';
						Troco_clr <= '0';
						Troco_ld <= '0';
						if Confirmar = '0' then
							next_state <= cancela;
						elsif Confirmar = '1' then
							next_state <= espera;
						else
							next_state <= cancela;
						end if; 
										
				when espera =>
						Produto_selecionado_ld <= '0';
						Produto_selecionado_clr <= '0';
						Mensagem_do_sistema <= "101";
						Mensagem_ld <= '1';
						Mensagem_clr <= '0';
						Dinheiro_total_ld <= '0';
						Dinheiro_total_clr <= '0';
						Produto_liberado <= '0';
						Troco_clr <= '0';
						Troco_ld <= '0';
						next_state <= calcula;
						
				when calcula =>
						Produto_selecionado_ld <= '0';
						Produto_selecionado_clr <= '0';
						Mensagem_ld <= '0';
						Mensagem_clr <= '0';
						Dinheiro_total_clr <= '0';
						Troco_clr <= '0';
						Produto_liberado <= '0';
						if DgtP = '1' then
							Dinheiro_total_ld <= '0';
							next_state <= troco;
							Troco_ld <= '1';
						elsif DeqP = '1' then
							Dinheiro_total_ld <= '0';
							next_state <= entrega;	
							Troco_ld <= '0';
						elsif DltP = '1' then
							Dinheiro_total_ld <= '1';
							next_state <= calcula;
							Troco_ld <= '0';
						else 
							Dinheiro_total_ld <= '0';
							next_state <= cancela;
							Troco_ld <= '0';
						end if;
							
				when troco=>
						Produto_selecionado_ld <= '0';
						Produto_selecionado_clr <= '0';
						Mensagem_do_sistema <= "110";
						Mensagem_ld <= '1';
						Mensagem_clr <= '0';
						Dinheiro_total_ld <= '0';
						Dinheiro_total_clr <= '1';
						Produto_liberado <= '0';
						Troco_clr <= '0';
						Troco_ld <= '1';
						next_state <= entrega;
						
				when entrega =>
						Produto_selecionado_ld <= '0';
						Produto_selecionado_clr <= '0';
						Mensagem_do_sistema <= "111";
						Mensagem_ld <= '1';
						Mensagem_clr <= '0';
						Dinheiro_total_ld <= '0';
						Dinheiro_total_clr <= '1';	
						Produto_liberado <= '1';
						Troco_clr <= '1';
						Troco_ld <= '0';
						next_state <= inicio;

				when cancela =>
						Produto_selecionado_ld <= '0';
						Produto_selecionado_clr <= '1';
						Dinheiro_total_ld <= '0';
						Dinheiro_total_clr <= '1';
						Mensagem_do_sistema <= "100";
						Mensagem_ld <= '1';
						Mensagem_clr <= '0';
						Troco_clr <= '1';
						Troco_ld <= '0';
						Produto_liberado <= '0';
						next_state <= inicio;
												
				end case;
	end process;

	process (RESET, CLOCK)
    begin
        if RESET = '1' then
            state <= inicio;
        elsif rising_edge(CLOCK) then
            state <= next_state;
        end if;
    end process;
	 
end arch;