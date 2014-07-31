LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ADDER.all;


entity ADDER_2BIT is
        port( a, b		        : in  STD_LOGIC_VECTOR (1 downto 0);
              cin				: in STD_LOGIC;
              sum		        : out STD_LOGIC_VECTOR (1 downto 0);
              cout				: out STD_LOGIC);
end ADDER_2BIT;

architecture BHV of ADDER_2BIT is
SIGNAL S1 : STD_LOGIC;
begin
        unidades:	ADDER_1BIT PORT MAP(a(0),b(0),cin,sum(0),S1);
        decenas:	ADDER_1BIT PORT MAP(a(1),b(1),S1,sum(1),cout);
      
end BHV;