library IEEE;
use IEEE.std_logic_1164.all;
entity sum is -- sumator
port(
a, b, ci : in std_logic; -- wejscia (ci -przeniesienie wej.)
sum : out std_logic; -- suma
co : out std_logic -- przeniesienie wyj.
);
end sum;
architecture sum of sum is
begin
sum <= a xor b xor ci;
co <= (a and b) or (a and ci) or (b and ci);
end sum;
