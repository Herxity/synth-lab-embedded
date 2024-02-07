----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2024 12:56:53 PM
-- Design Name: 
-- Module Name: DFFLowCE - Behavioral
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

entity DFFLowCE is
  Port ( CLK : in STD_LOGIC;  -- Define the clock input
         D : in STD_LOGIC;
         Q : out STD_LOGIC;
         ENABLE: in STD_LOGIC);
end DFFLowCE;

architecture Behavioral of DFFLowCE is

begin

process (CLK)
begin
      if rising_edge (CLK) then
        if ENABLE = '1' then
           Q <= D;
        end if;
      end if;
end process;


end Behavioral;
