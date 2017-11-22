library IEEE;
use IEEE.std_logic_1164.all;

entity ControlS is port 
(
	controle : in std_logic;
	parar : in std_logic;
	saida1 : out std_logic;
	saida2 : out std_logic


);

end ControlS;

architecture hardware of ControlS is
begin 


	saida1 <= controle AND (NOT parar);
	saida2 <= NOT(controle OR parar);

end hardware;