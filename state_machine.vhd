ENTITY state_machine IS
   PORT(
      clk      : IN   STD_LOGIC;  --clock
      input    : IN   STD_LOGIC;  --vetor de entrada (no caso seria o sinal vindo do eletrodo).
      reset    : IN   STD_LOGIC;  -- no caso da necessidade de um reset(porém não acho que seja necessário).
      output   : OUT  STD_LOGIC_VECTOR(1 downto 0)); -- sinal de saída para movimento do motor i.e., ligar bobina azul ou ligar bobina amarela e etc..
END state_machine;
ARCHITECTURE a OF state_machine IS
   TYPE STATE_TYPE IS (s0, s1, s2, s3);  --quatro estados , um para cada bobina.
   SIGNAL state   : STATE_TYPE;  -- inicialização da maquina de estados.
BEGIN
   PROCESS (clk, reset)
   variable maxangle: integer; -- variável para limite de ângulo.
   BEGIN
      IF (reset = '1') THEN
         state <= s0;
      ELSIF (clk'EVENT AND clk = '1') THEN
		IF (input = '1') THEN
			IF(maxangle > 16) THEN   --condição de ângulo máximo. -- **16 é só para um teste, no caso de 90 graus seria 512, por exemplo.
				wait;
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
				maxangle = maxangle + 1;  --incremento ao ângulo.
			END IF;
		END IF;
				
				-- começo do giro reverso
				
				
		IF (input = '0') THEN
			IF(maxangle <= 0) THEN     --condição de ângulo mínimo.
				wait;
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
				maxangle = maxangle - 1;    -- decremento ao ângulo.
			END IF;
		END IF;
      END IF;
   END PROCESS;
   
   PROCESS (state)
   BEGIN
      CASE state IS
         WHEN s0 =>
            output <= "00"; -- ligar bobina azul.
         WHEN s1 =>
            output <= "01";  -- ligar bobina rosa.
         WHEN s2 =>
            output <= "10";  -- ligar bobina amarela.
			WHEN s3 =>
            output <= "11";  -- ligar bobina laranja.
      END CASE;
   END PROCESS;
   
END a;