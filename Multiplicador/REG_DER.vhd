-- Registro de Desplazamiento a la derecha de 8 bits. Carga un valor inicial y desplaza valores a la derecha
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_DER is
        port( Qin		        : in  STD_LOGIC_VECTOR (7 downto 0);
              Clk, EnCarga, EnDesp, DespValue		: in STD_LOGIC;
              Qout		        : out STD_LOGIC_VECTOR (7 downto 0));
              
end REG_DER;

ARCHITECTURE BHV of REG_DER is
signal tmp: std_logic_vector(7 downto 0); 
Begin
	Process(Clk)
	Begin
		if Clk'event and Clk ='1' then
			if EnCarga = '1' then
				tmp <= Qin;
			elsif EnDesp = '1' then
				tmp(0) <= tmp(1);
				tmp(1) <= tmp(2);
				tmp(2) <= tmp(3);
				tmp(3) <= tmp(4);
				tmp(4) <= tmp(5);
				tmp(5) <= tmp(6);
				tmp(6) <= tmp(7);
				tmp(7) <= DespValue;
			end if;
		end if;
	end Process;
	Qout <= tmp;
End BHV;