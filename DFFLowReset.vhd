----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2024 12:54:17 PM
-- Design Name: 
-- Module Name: DFFLowReset - Behavioral
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

entity DFFLowReset is
  Port ( CLK : in std_LOGIC;  -- Define the clock input
         D : in STD_LOGiC;
         Q : out std_logic;
         RESET : in std_logic);
end DFFLowReset;

architecture Behavioral of DFFLowReset is

begin


process (CLK)
begin
      if rising_edge(CLK) then
        if RESET = '1' then
           Q <= '0';
        else
           Q <= D;
        end if;
      end if;
end process;


end Behavioral;
