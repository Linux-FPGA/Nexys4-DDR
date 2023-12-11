----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2023 01:37:12 PM
-- Design Name: 
-- Module Name: Test_SW_LED - Behavioral
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

entity Test_SW_LED is
    Port ( btnu : in STD_LOGIC;
           btnl : in STD_LOGIC;
           btnr : in STD_LOGIC;
           btnd : in STD_LOGIC;
           btnc : in STD_LOGIC;
           LED0 : out STD_LOGIC;
           LED1 : out STD_LOGIC;
           LED2 : out STD_LOGIC;
           LED3 : out STD_LOGIC);
end Test_SW_LED;

architecture Behavioral of Test_SW_LED is

begin
    LED0 <= btnu and btnc;
    LED1 <= btnl;
    LED2 <= btnr;
    LED3 <= btnd;

end Behavioral;
