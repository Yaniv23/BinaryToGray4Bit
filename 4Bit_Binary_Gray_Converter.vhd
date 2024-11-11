----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2024 19:15:58
-- Design Name: 
-- Module Name: 4Bit_Binary_Gray_Converter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
