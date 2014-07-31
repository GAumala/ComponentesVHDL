-- Puerta AND de 1 bit
library IEEE;
use ieee.std_logic_1164.all;

ENTITY AND1 IS
PORT(a, b	: IN STD_LOGIC;
	 r		: OUT STD_LOGIC);
END AND1;

ARCHITECTURE BHV OF AND1 IS
BEGIN
	r <= a AND b;
END BHV;