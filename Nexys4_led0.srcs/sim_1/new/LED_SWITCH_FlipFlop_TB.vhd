----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2023 01:27:18 PM
-- Design Name: 
-- Module Name: LED_SWITCH_FlipFlop_TB - Behavioral
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

entity LED_SWITCH_FlipFlop_TB is
end LED_SWITCH_FlipFlop_TB;

architecture Behavioral of LED_SWITCH_FlipFlop_TB is
    signal r_btnu_tb, r_btnd_tb, r_LED0_tb, r_LED1_tb :STD_LOGIC;
    signal clk_tb : STD_LOGIC := '0';
begin

    UUT: entity work.LED_SWITCH_FlipFlop
    port map (
        LED0 => r_LED0_tb,
        LED1 => r_LED1_tb,
        btnu => r_btnu_tb,
        btnd => r_btnd_tb,
        clk => clk_tb
        );
  
      Clk_tb <= not Clk_tb after 2ns;

simulation: Process

begin
    
    wait for 10 ns;
        r_btnu_tb <= '1';
        wait for 10 ns;
        r_btnu_tb <= '0';
        wait for 10 ns;
        r_btnu_tb <= '1';
        wait for 20 ns;

    end process;
    
    Process
    begin
        wait for 10 ns;
        r_btnd_tb <= '1';
        wait for 10 ns;
        r_btnd_tb <= '0';   
        wait for 10 ns;
        r_btnd_tb <= '1';
        wait for 20 ns;
    end process;
end Behavioral;
