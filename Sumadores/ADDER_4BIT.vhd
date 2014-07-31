LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ADDER2.all;


entity ADDER_4BIT is
        port( a, b		        : in  STD_LOGIC_VECTOR (3 downto 0);
              cin				: in STD_LOGIC;
              sum		        : out STD_LOGIC_VECTOR (3 downto 0);
              cout				: out STD_LOGIC);
end ADDER_4BIT;

architecture BHV of ADDER_4BIT is
SIGNAL S1 : STD_LOGIC;
SIGNAL SUM1, SUM2 : STD_LOGIC_VECTOR (1 downto 0);
begin
        part1:	ADDER_2BIT PORT MAP(a(1)&a(0),b(1)&b(0),cin,SUM1,S1);
        part2:	ADDER_2BIT PORT MAP(a(3)&a(2),b(3)&b(2),S1,SUM2,cout);
        sum <= SUM2 & SUM1;
      
end BHV;