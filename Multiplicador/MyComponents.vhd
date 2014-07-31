-- Componentes necesarios
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;


package MyComponents is
                      
component REG_DER PORT ( Qin		        : in  STD_LOGIC_VECTOR (7 downto 0);
						Clk, EnCarga, EnDesp, DespValue		: in STD_LOGIC;
						Qout		        : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

component CTRL   port( start, loadA, loadB, reset, Clk, esUno, listo    : in  STD_LOGIC;
              loadMndo, EnMndo, loadMdor, EnMdor, sumar,  fin, s    : out STD_LOGIC);
              
end COMPONENT;

component REG_IZQ_16BIT PORT ( Qin		        : in  STD_LOGIC_VECTOR (15 downto 0);
						Clk, EnCarga, EnDesp, DespValue		: in STD_LOGIC;
						Qout		        : out STD_LOGIC_VECTOR (15 downto 0));
END COMPONENT;

component MUX_2a1_16BIT PORT ( A, B		        : in  STD_LOGIC_VECTOR (15 downto 0);
								S		: in STD_LOGIC;
								R		        : out STD_LOGIC_VECTOR (15 downto 0));
END COMPONENT;

component IS_ZERO_8BIT  port( a			        : in  STD_LOGIC_VECTOR (7 downto 0);
							  result		    : out STD_LOGIC);
END COMPONENT;

component AND1  port( a, b			        : in  STD_LOGIC;
						r				    : out STD_LOGIC);
END COMPONENT;
END MyComponents;