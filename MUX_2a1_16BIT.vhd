-- Multiplexor 2 a 1 con entradas de 16 bits
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2a1_16BIT is
        port( A, B		        : in  STD_LOGIC_VECTOR (15 downto 0);
              S		: in STD_LOGIC;
              R		        : out STD_LOGIC_VECTOR (15 downto 0));
              
end MUX_2a1_16BIT;

ARCHITECTURE BHV OF MUX_2a1_16BIT IS
BEGIN
with S select R <= A when '0',
				   B when '1';
END BHV;