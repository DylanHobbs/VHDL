----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:07 02/24/2016 
-- Design Name: 
-- Module Name:    adder_4_b - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_4_b is
    Port ( B : in  STD_LOGIC_VECTOR(15 downto 0);
           A : in  STD_LOGIC_VECTOR(15 downto 0);
           C0 : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(15 downto 0);
           C16 : out  STD_LOGIC);
end adder_4_b;

architecture Behavioral of adder_4_b is
	signal sum : std_logic_vector(16 downto 0);
	
	begin
	sum <= ('0' & A) + ('0' & B) + ("0000000000000000" & C0);
	C16 <= sum(16);
	S <= sum(15 downto 0);
end behavioral; 

