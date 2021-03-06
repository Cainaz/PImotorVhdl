library ieee;
use IEEE.std_logic_1164.all;

entity maquina_estados is
   port(
      	clk      : in   std_logic;  --clock
      	input    : in   std_logic;  --vetor de entrada (no caso seria o sinal vindo do eletrodo).
      	azul   : out  std_logic; -- sinal de saída para movimento do motor i.e., ligar bobina azul ou ligar bobina amarela e etc
      	rosa   : out  std_logic;
	amarelo   : out  std_logic;
	laranja   : out  std_logic
);
END maquina_estados;

architecture bitch of maquina_estados is	
begin
	process(clk)
		variable passo_atual : integer range 1 to 5 := 1;
		variable passo_atual2 : integer range 1 to 5 := 1;
		variable angulo_atual: integer := 0; 
	begin
	if (rising_edge(clk)) then
		if(input = '1') then
			if (angulo_atual > 500) then
				azul <= '0';
				rosa <= '0';
				amarelo <= '0';
				laranja <= '0';
			else
				case passo_atual is
					when 1 =>
		 				azul <= '1';
						rosa <= '0';
						amarelo <= '0';
						laranja <= '0'; 
						passo_atual := passo_atual + 1;
					when 2 =>
		 				azul <= '0';
						rosa <= '1';
						amarelo <= '0';
						laranja <= '0'; 
						passo_atual := passo_atual + 1;
					when 3 =>
		 				azul <= '0';
						rosa <= '0';
						amarelo <= '1';
						laranja <= '0'; 
						passo_atual := passo_atual + 1;
					when 4 =>
		 				azul <= '0';
						rosa <= '0';
						amarelo <= '0';
						laranja <= '1';
						passo_atual := passo_atual + 1;
					when others =>										
				end case;
				
				if (passo_atual > 4) then
					passo_atual := 1; 
				end if;
				angulo_atual := angulo_atual + 1;
			end if;
		else 
			if (angulo_atual < 0) then
				azul <= '0';
				rosa <= '0';
				amarelo <= '0';
				laranja <= '0';
			else
				case passo_atual2 is
					when 1 =>
		 				azul <= '0';
						rosa <= '0';
						amarelo <= '0';
						laranja <= '1';
						passo_atual2 := passo_atual2 + 1;
					when 2 =>
		 				azul <= '0';
						rosa <= '0';
						amarelo <= '1';
						laranja <= '0';
						passo_atual2 := passo_atual2 + 1;
					when 3 =>
		 				azul <= '0';
						rosa <= '1';
						amarelo <= '0';
						laranja <= '0'; 
						passo_atual2 := passo_atual2 + 1;
					when 4 =>
		 				azul <= '1';
						rosa <= '0';
						amarelo <= '0';
						laranja <= '0';
						passo_atual2 := passo_atual2 + 1;
					when others =>				 
				end case;

				if (passo_atual2 > 4) then
					passo_atual2 := 1; 
				end if;
				angulo_atual := angulo_atual - 1;
			end if;
		
		end if;
	end if;
	end process;
end bitch;