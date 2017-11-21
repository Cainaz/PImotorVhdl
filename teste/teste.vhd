library IEEE;
use ieee.std_logic_1164.all;                                                                                                                                   
use ieee.std_logic_unsigned.all; 
                                                                                                                                                                                                                                        
entity teste is                                                                                                                
 port                                                                                                                                                                                                       
  ( in1 : in std_logic:='0';
	in2 : in std_logic := '1';
    out1 : out std_logic;
    out2 : out std_logic                                                                                                                                                         
  );                                                                                                                                                                                                                                                                                                                                             
 end teste;                                                                                                                        

 
 architecture arq of teste is                                                                                                                                             
 begin
	out1 <= in1 AND '1';
	out2 <= NOT(in1 AND '1');

  end arq;  