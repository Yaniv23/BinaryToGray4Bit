----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2024 19:32:49
-- Design Name: 
-- Module Name: Bit_Binary_to_Gray_Converter_tb - Behavioral
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

entity Bit_Binary_to_Gray_Converter_tb is
--  Port ( );
end Bit_Binary_to_Gray_Converter_tb;

architecture Behavioral of Bit_Binary_to_Gray_Converter_tb is
    component Bit_Binary_to_Gray_Converter is port 
    ( B : in  STD_LOGIC_VECTOR (3 downto 0);
      G : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    signal B,G : STD_LOGIC_VECTOR (3 downto 0);
begin
    uut : Bit_Binary_to_Gray_Converter port map (B=>B , G=>g );
    process
        begin
        B <= "1100";--Gray "1010"
        wait for 100 ns;
        B <= "1111";--Gray "1000"
        wait for 100 ns;
        B <= "0001";--Gray "0001"
        wait for 100 ns;
        
   end process ;
end Behavioral;
