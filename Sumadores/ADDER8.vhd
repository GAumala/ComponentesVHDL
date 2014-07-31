
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package ADDER8 is
                      
component ADDER_8BIT PORT ( a, b  : in  STD_LOGIC_VECTOR (7 downto 0);  
							cin  : in  STD_LOGIC;
							sum   : out STD_LOGIC_VECTOR (7 downto 0);
							cout   : out STD_LOGIC);
END COMPONENT;

END ADDER8;