library IEEE;
use IEEE.std_logic_1164.all;
entity bramka_nand is
	port(
		a,b,c,d  :in std_logic;
		z        :out std_logic
	);
end bramka_nand;
architecture bramka_c of bramka_nand is
begin
	z <= not (a and b and c and d) after 1ns;
end bramka_c;