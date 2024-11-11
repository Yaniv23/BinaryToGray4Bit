library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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
