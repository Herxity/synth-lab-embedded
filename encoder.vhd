----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2024 09:24:14 PM
-- Design Name: 
-- Module Name: encoder - Behavioral
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

entity encoder is
    Port ( 
            A : in  std_logic_vector(0 to 3);
            
            O: out std_logic_vector(0 to 1));
end encoder;

architecture Behavioral of encoder is

begin
    process(A)
    begin

         case A is
            when "0001" => O <= "00";
            when "0010" => O<= "01";
            when "0100" => O <= "10";
            when "1000" => O <= "11";
            when others => O <= "00";
         end case;

    end process;


end Behavioral;
