library IEEE;
use IEEE.std_logic_1164.all;
entity bramka_or is
	port(
		x,y,a  :in std_logic;
		z      :out std_logic
	);
end bramka_or;
architecture bramka_b of bramka_or is
begin
	z <= x or y or a;
end bramka_b;