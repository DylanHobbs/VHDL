----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:33:57 02/25/2016 
-- Design Name: 
-- Module Name:    shifter_mu_3to1 - Behavioral 
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

entity shifter_mu_3to1 is
    Port ( in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           H : out  STD_LOGIC);
end shifter_mu_3to1;

architecture Behavioral of shifter_mu_3to1 is

begin
	H <= in0 after 1 ns when s="00" else
	in1 after 1 ns when s="01" else
	in2 after 1 ns when s="10" else
	'0' after 1 ns;
end Behavioral;

