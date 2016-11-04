----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:32:30 02/25/2016 
-- Design Name: 
-- Module Name:    MB_select_mux - Behavioral 
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

entity MB_select_mux is
    Port ( B : in  STD_LOGIC_VECTOR(15 downto 0);
           Cin : in  STD_LOGIC_VECTOR(15 downto 0);
			  s : in STD_LOGIC;
           Z : out  STD_LOGIC_VECTOR(15 downto 0)
			  );
end MB_select_mux;

architecture Behavioral of MB_select_mux is

begin
	Z <= B after 1 ns when s='0' else
	Cin after 1 ns when s='1' else
	"0000000000000000" after 1 ns;

end Behavioral;

