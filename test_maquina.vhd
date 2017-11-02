LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY test_maquina IS
END test_maquina;

ARCHITECTURE behavior OF test_maquina IS

	COMPONENT maquina_estados

	PORT(
		clk      : IN   STD_LOGIC;  --clock
		input    : IN   STD_LOGIC;
      		 --vetor de entrada (no caso seria o sinal vindo do eletrodo).
      		azul   : OUT  STD_LOGIC;
		rosa   : OUT  STD_LOGIC;
		amarelo   : OUT  STD_LOGIC;
		laranja  : OUT  STD_LOGIC);

END COMPONENT;
	


	signal clk : std_logic;
	signal input : std_logic;
	signal azul   : STD_LOGIC;
	signal rosa   : STD_LOGIC;
	signal amarelo  : STD_LOGIC;
	signal laranja  : STD_LOGIC;
	signal bitvector  : STD_LOGIC_VECTOR(40 downto 0) := (others => '0'); 
	constant clockp : time := 1 ns;

BEGIN

	utt: maquina_estados PORT MAP (
		clk => clk,
		input => input,
		azul => azul,
		rosa => rosa,
		amarelo => amarelo,
		laranja => laranja

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
      	bitvector <= "00000000000000000000111111111111111111111";
	for i in 0 to bitvector'length-1 loop
      input <= bitvector(i);
      wait until rising_edge(clk); 
    end loop;
    wait;    
  end process;

END;