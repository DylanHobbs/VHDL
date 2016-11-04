----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:48:08 03/08/2016 
-- Design Name: 
-- Module Name:    logic - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity logic is
	Port (
        input_1 : in  STD_LOGIC_VECTOR(15 downto 0);
        input_2 : in  STD_LOGIC_VECTOR(15 downto 0);
        sel_0, sel_1 : in  STD_LOGIC;
        logical_output : out  STD_LOGIC_VECTOR(15 downto 0)
    );
end logic;

architecture Behavioral of logic is

begin
	logical_output <= (input_1 and input_2) after 5 ns when sel_0='0' and sel_1='0' else
	(input_1 or input_2) after 5 ns when sel_0='0' and sel_1='1' else
	(input_1 xor input_2) after 5 ns when sel_0='1' and sel_1='0' else
	(not input_1) after 5 ns when sel_0='1' and sel_1='1' else
	"0000000000000000" after 5 ns;
end Behavioral;

