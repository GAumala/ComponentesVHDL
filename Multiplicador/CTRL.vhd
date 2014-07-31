-- Controlador para el multiplicador
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CTRL is
        port( start, loadA, loadB, reset, Clk, esUno, listo    : in  STD_LOGIC;
              loadMndo, EnMndo, loadMdor, EnMdor, sumar,  fin, s    : out STD_LOGIC);
              
end CTRL;

ARCHITECTURE BHV of CTRL IS
TYPE Estado is (a, b, c, d ,e, f);
SIGNAL y : Estado;
BEGIN 
Process(reset, Clk)
	BEGIN
		if Reset = '1' then y <= a;
		elsif Clk'event and Clk ='1' then
			case y is
				when a => IF loadA = '1' AND loadB = '1' then y <= b;
				else y <= a; END IF;
				when b => IF start = '1' then y <= c;
				else y <= b; END IF;
				when c => IF listo = '1' then y <= d;
				elsif esUno = '1' then y <= e;
				else y <= f; END IF;
				when d => y <= d;
				when e => y <= f;
				when f => y <= c;
			end case;
		end if;
	end Process;
Process (y)
	BEGIN
	if y = a then
		loadMndo <='0';
		enMndo <='0';
		loadMdor <='0';
		enMdor <='0';
		sumar <= '1';
		s <= '0';
		fin <= '0';
	elsif y = b then
		loadMndo <='1';
		enMndo <='0';
		loadMdor <='1';
		enMdor <='0';
		sumar <= '0';
		s <= '0';
		fin <= '0';
	elsif y = c then
		loadMndo <='0';
		enMndo <='0';
		loadMdor <='0';
		enMdor <='0';
		sumar <= '0';
		s <= '1';
		fin <= '0';
	elsif y = d then
		loadMndo <='0';
		enMndo <='0';
		loadMdor <='0';
		enMdor <='0';
		sumar <= '0';
		s <= '0';
		fin <= '1';
	elsif y = e then
		loadMndo <='0';
		enMndo <='0';
		loadMdor <='0';
		enMdor <='0';
		sumar <= '1';
		s <= '1';
		fin <= '0';
	elsif y = f then
		loadMndo <='0';
		enMndo <='1';
		loadMdor <='0';
		enMdor <='1';
		sumar <= '0';
		s <= '1';
		fin <= '0';
	end if;
end Process;
end BHV;
		