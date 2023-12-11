----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2023 11:45:56 PM
-- Design Name: 
-- Module Name: LED_Toggle_Project - Behavioral
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

entity LED_Toggle_Project is
    Port ( clk : in STD_LOGIC;
           btnu : in STD_LOGIC;
           LED0 : out STD_LOGIC
           );
end LED_Toggle_Project;

architecture Behavioral of LED_Toggle_Project is
    signal r_LED0 : std_logic := '0';
    signal r_btnu : std_logic := '0';

begin
    process(clk) is
    begin
        if rising_edge(clk) then
            r_btnu <= btnu;
            if btnu = '0' and r_btnu = '1' then
                r_LED0 <= not r_LED0;
            end if;
        end if;
    end process;
    LED0 <= r_LED0;

end Behavioral;
