library ieee;
use IEEE.std_logic_1164.all;

ENTITY maquina_estados IS
   PORT(
      clk      : IN   STD_LOGIC;  --clock
      input    : IN   STD_LOGIC;  --vetor de entrada (no caso seria o sinal vindo do eletrodo).
      output   : OUT  STD_LOGIC_VECTOR(2 downto 0)); -- sinal de saída para movimento do motor i.e., ligar bobina azul ou ligar bobina amarela e etc..
END maquina_estados;

ARCHITECTURE a OF maquina_estados IS
   	TYPE STATE_TYPE IS (s0, s1, s2, s3);  --quatro estados , um para cada bobina.
   	SIGNAL state   : STATE_TYPE;  -- inicialização da maquina de estados.
BEGIN
   PROCESS (clk)
   variable maxangle: integer ; -- variável para limite de ângulo.
   BEGIN
      IF (clk'EVENT AND clk = '1') THEN
		IF (input = '1') THEN
			IF(maxangle > 16) THEN   --condição de ângulo máximo. -- **16 é só para um teste, no caso de 90 graus seria 512, por exemplo.
				state <= s1;
			ELSE
			CASE state IS
				WHEN s0=>
					state <= s1;
				WHEN s1=>
					state <= s2;
				WHEN s2=>
					state <= s3;
				WHEN s3=>
					state <= s0;
			END CASE;
			END IF;
				maxangle := maxangle + 1;  --incremento ao ângulo.
				
				-- começo do giro reverso	
			IF(maxangle <= 0) THEN     --condição de ângulo mínimo.
				state <= s1;
			ELSE
			CASE state IS
				WHEN s0=>
					state <= s3;
				WHEN s1=>
					state <= s0;
				WHEN s2=>
					state <= s1;
				WHEN s3=>
					state <= s2;
			END CASE;
			END IF;
				maxangle := maxangle - 1;    -- decremento ao ângulo.
		END IF;
	END IF;
   END PROCESS;
   
   PROCESS (state)
   BEGIN
      CASE state IS
         WHEN s0 =>
            output <= "001"; -- ligar bobina azul.
         WHEN s1 =>
            output <= "010";  -- ligar bobina rosa.
         WHEN s2 =>
            output <= "011";  -- ligar bobina amarela.
	 WHEN s3 =>
            output <= "110";  -- ligar bobina laranja.
      END CASE;
END PROCESS;
   
END a;