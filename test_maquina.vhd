LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY test_maquina IS
END test_maquina;

ARCHITECTURE behavior OF test_maquina IS

	COMPONENT maquina_estados

	PORT(
		clk      : IN   STD_LOGIC;  --clock
      		input    : IN   STD_LOGIC_VECTOR(90 downto 0) := (others => '0');  --vetor de entrada (no caso seria o sinal vindo do eletrodo).
      		output   : OUT  STD_LOGIC_VECTOR(2 downto 0));

END COMPONENT;

	signal clk : std_logic := '0';
	signal input : std_logic_vector(90 downto 0) := (others => '0');
	signal output : std_logic_vector(2 downto 0);
	
	constant clockp : time := 1 ns;

BEGIN

	utt: maquina_estados PORT MAP (
		clk => clk,
		input => input,
		output => output

	);

clk_process :process
   begin
        clk <= '0';
        wait for clockp;  --for 0.5 ns signal is '0'.
        clk <= '1';
        wait for clockp;  --for next 0.5 ns signal is '1'.
   end process;

stim_proc: process
   begin       
      	input <= "1111111111100000000000000000000000000111111111111111111111111111111111111111111100000000000";
	wait;
  end process;

END;