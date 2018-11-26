library IEEE;
use IEEE.std_logic_1164.all;
entity half_sum is -- pó³sumator
port(
a, b : in std_logic; -- wejscia
sum : out std_logic; -- suma
carry : out std_logic -- przeniesienie
);
end half_sum;
architecture half_sum of half_sum is
begin
sum <= a xor b;
carry <= a and b;
end half_sum;
