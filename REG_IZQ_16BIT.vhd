-- Registro de Desplazamiento a la izq de 16 bits. Carga un valor inicial y desplaza valores a la izquierda
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_IZQ_16BIT is
        port( Qin		        : in  STD_LOGIC_VECTOR (15 downto 0);
              Clk, EnCarga, EnDesp, DespValue		: in STD_LOGIC;
              Qout		        : out STD_LOGIC_VECTOR (15 downto 0));
              
end REG_IZQ_16BIT;

ARCHITECTURE BHV of REG_IZQ_16BIT is
signal tmp: std_logic_vector(15 downto 0); 
Begin
	Process(Clk)
	Begin
		if Clk'event and Clk ='1' then
			if EnCarga = '1' then
				tmp <= Qin;
			elsif EnDesp = '1' then
				tmp(15) <= tmp(14);
				tmp(14) <= tmp(13);
				tmp(13) <= tmp(12);
				tmp(12) <= tmp(11);
				tmp(11) <= tmp(10);
				tmp(10) <= tmp(9);
				tmp(9) <= tmp(8);
				tmp(8) <= tmp(7);
				tmp(7) <= tmp(6);
				tmp(6) <= tmp(5);
				tmp(5) <= tmp(4);
				tmp(4) <= tmp(3);
				tmp(3) <= tmp(2);
				tmp(2) <= tmp(1);
				tmp(1) <= tmp(0);
				tmp(0) <= DespValue;
			end if;
		end if;
	end Process;
	Qout <= tmp;
End BHV;