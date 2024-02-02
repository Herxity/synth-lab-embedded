----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2024 07:40:08 PM
-- Design Name: 
-- Module Name: equal - Behavioral
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

entity equal is
    port(
        A: in std_logic_vector(0 to 7);
        B: in std_logic_vector(0 to 7);
        Y: out std_logic);
end equal;

architecture Behavioral of equal is

begin

process(A,B)
begin
  if ( A = B ) then
     Y <= '1';
  else
     Y <= '0';
  end if;

end process;


				

end Behavioral;
