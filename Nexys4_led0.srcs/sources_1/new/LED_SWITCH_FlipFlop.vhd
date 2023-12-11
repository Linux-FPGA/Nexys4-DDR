----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2023 12:57:23 PM
-- Design Name: 
-- Module Name: LED_SWITCH_FlipFlop - Behavioral
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

entity LED_SWITCH_FlipFlop is
    Port ( btnu : in STD_LOGIC;
           btnd : in STD_LOGIC;
           clk  : in STD_LOGIC;
           LED0 : out STD_LOGIC;
           LED1 : out STD_LOGIC
           );
end LED_SWITCH_FlipFlop;

architecture Behavioral of LED_SWITCH_FlipFlop is
    signal r_LED0 : STD_LOGIC := '0';
    signal r_LED1 : STD_LOGIC := '0';
    signal r_btnu : STD_LOGIC := '0';
    signal r_btnd : STD_LOGIC := '0';

begin

    process(clk)
    begin 
        if rising_edge (clk) then
            r_btnu <= btnu;
            if btnu = '0' and r_btnu = '1' then
                r_LED0 <= not r_LED0;
            end if;
        end if;
    end process;
    LED0 <= r_LED0;
    
    
    process(clk)
    begin 
        if rising_edge (clk) then
            r_btnd <= btnd;
            if btnd ='0' and r_btnd = '1' then
                r_LED1 <= not r_LED1;
            end if;
        end if;
    end process;
    LED1 <= r_LED1;
    
end Behavioral;
