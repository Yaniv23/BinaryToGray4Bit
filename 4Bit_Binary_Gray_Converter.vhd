library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library ieee;
use ieee.std_logic_1164.all;

entity Bit_Binary_to_Gray_Converter is
    Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           G : out STD_LOGIC_VECTOR (3 downto 0));
end Bit_Binary_to_Gray_Converter;

architecture Behavioral of Bit_Binary_to_Gray_Converter is
begin
    process(B)
    begin
        G(3) <= B(3);  -- The MSB is directly assigned
        for i in 2 downto 0 loop
            G(i) <= B(i + 1) xor B(i);  -- Calculate Gray code for each bit
        end loop;
    end process;
end Behavioral;
