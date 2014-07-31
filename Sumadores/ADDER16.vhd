LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package ADDER16 is
                      
component ADDER_16BIT PORT ( a, b  : in  STD_LOGIC_VECTOR (15 downto 0);  
							cin  : in  STD_LOGIC;
							sum   : out STD_LOGIC_VECTOR (15 downto 0);
							cout   : out STD_LOGIC);
END COMPONENT;

END ADDER16;