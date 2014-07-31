-- Simulation Tutorial
-- 1-bit Adder

-- This is just to make a reference to some common things needed.
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- We declare the 1-bit adder with the inputs and outputs
-- shown inside the port().
-- This will add two bits together(x,y), with a carry in(cin) and 
-- output the sum(sum) and a carry out(cout).
package ADDER is
                      
component ADDER_1BIT PORT ( a, b, cin  : in  STD_LOGIC;  sum, cout   : out STD_LOGIC );
END COMPONENT;

END ADDER;