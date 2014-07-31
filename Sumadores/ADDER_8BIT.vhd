LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ADDER4.all;


entity ADDER_8BIT is
        port( a, b		        : in  STD_LOGIC_VECTOR (7 downto 0);
              cin				: in STD_LOGIC;
              sum		        : out STD_LOGIC_VECTOR (7 downto 0);
              cout				: out STD_LOGIC);
end ADDER_8BIT;

architecture BHV of ADDER_8BIT is
SIGNAL S1 : STD_LOGIC;
SIGNAL SUM1, SUM2 : STD_LOGIC_VECTOR (3 downto 0);
begin
        part1:	ADDER_4BIT PORT MAP(a(3)&a(2)&a(1)&a(0),b(3)&b(2)&b(1)&b(0),cin,SUM1,S1);
        part2:	ADDER_4BIT PORT MAP(a(7)&a(6)&a(5)&a(4),b(7)&b(6)&b(5)&b(4),S1,SUM2,cout);
        sum <= SUM2 & SUM1;
      
end BHV;