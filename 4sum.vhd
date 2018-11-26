library IEEE;
use IEEE.std_logic_1164.all;
entity sum_4bit is
port (
a3, a2, a1, a0 : in std_logic; -- wejscie 1
b3, b2, b1, b0 : in std_logic; -- wejscie 2
q4, q3, q2, q1, q0 : out std_logic -- wyjscie (suma)
);
end sum_4bit;
architecture sum_4bit of sum_4bit is
component half_sum is
port(
a, b : in std_logic; -- wejscia
sum : out std_logic; -- suma
carry : out std_logic -- przeniesienie
);
end component;
component sum is
port(
a, b, ci : in std_logic; -- wejscia
sum : out std_logic; -- suma
co : out std_logic -- przeniesienie
);
end component;
signal cc1, cc2, cc3 : std_logic;
begin
blok1: half_sum port map (a=>a0, b=>b0, sum=>q0, carry=>cc1);
blok2: sum port map (a=>a1, b=>b1, ci=>cc1, sum=>q1, co=>cc2);
blok3: sum port map (a=>a2, b=>b2, ci=>cc2, sum=>q2, co=>cc3);
blok4: sum port map (a=>a3, b=>b3, ci=>cc3, sum=>q3, co=>q4);
end sum_4bit;
