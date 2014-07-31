-- Multiplicador sencillo de numeros de 16 bits. El resultado es un numero de 32 bits
library IEEE;
use ieee.std_logic_1164.all;
use work.MyComponents.all;
use work.ADDER16.all;

ENTITY Multiplier IS
PORT (start, loadA, loadB, reset, Clk :	IN STD_LOGIC;
	  multiplicador, multiplicando	  : IN STD_LOGIC_VECTOR (7 downto 0);
	  Result						  : OUT STD_LOGIC_VECTOR (15 downto 0);
	  Fin							  : OUT STD_LOGIC);
END Multiplier;

ARCHITECTURE BHV OF Multiplier IS
SIGNAL listo, esUno, loadMndo, enMndo, loadMdor, enMdor, sumar, selector, x : STD_LOGIC;
SIGNAL r1, r2, r3, r4 : STD_LOGIC_VECTOR (15 downto 0);
SIGNAL s1 : STD_LOGIC_VECTOR (7 downto 0);

BEGIN

U1:	CTRL PORT MAP (start, loadA, loadB, reset, Clk, esUno, listo, loadMndo, EnMndo, loadMdor, enMdor, sumar, fin, selector);
U2: REG_DER PORT MAP (multiplicador, Clk, LoadMdor, enMdor, '0', s1);
U3: REG_IZQ_16BIT PORT MAP ("00000000"&multiplicando, Clk, loadMndo, enMndo, '0', r1);
U4: ADDER_16BIT PORT MAP(r4, r1, '0', r2, x);
U5: IS_ZERO_8BIT PORT MAP (s1, listo);
U6: AND1 PORT MAP (s1(0), '1', esUno);
U7: MUX_2a1_16BIT PORT MAP ("0000000000000000", r2, selector, r3);
U8: REG_IZQ_16BIT PORT MAP (r3, Clk, sumar, '0', '0', r4);

result <= r4;


END BHV;
