library IEEE;
use ieee.std_logic_1164.all;                                                                                                                                   
use ieee.std_logic_unsigned.all; 
                                                                                                                                                                                                                                        
entity teste is                                                                                                                
 port                                                                                                                                                                                                       
  ( controle : in std_logic;
	 parar: in std_logic;
    saida1 : out std_logic;
    saida2 : out std_logic                                                                                                                                                         
  );                                                                                                                                                                                                                                                                                                                                             
 end teste;                                                                                                                        

 
 architecture arq of teste is                                                                                                                                             
 begin
	saida1 <= controle OR parar;
	saida2 <= (NOT controle) OR parar;

  end arq;  