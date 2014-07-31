-- Compara si la palabra ingresada  es una secuencia de ceros (8 bits)
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IS_ZERO_8BIT is
        port( a			        : in  STD_LOGIC_VECTOR (7 downto 0);
              result		    : out STD_LOGIC);
              
end IS_ZERO_8BIT;

ARCHITECTURE BHV of IS_ZERO_8BIT is

Begin
	with (a) select
	result <= '1' when "00000000",
			  '0' when others;
End BHV;