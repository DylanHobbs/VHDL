----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:37 02/26/2016 
-- Design Name: 
-- Module Name:    ALU_inverter - Behavioral 
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

entity ALU_inverter is
    Port (A : in STD_LOGIC_VECTOR(15 downto 0);
			 R : out STD_LOGIC_VECTOR(15 downto 0)
			 );
end ALU_inverter;

architecture Behavioral of ALU_inverter is
begin
	R(0) <= NOT A(0);
	R(1) <= NOT A(1);
	R(2) <= NOT A(2);
	R(3) <= NOT A(3);
	R(4) <= NOT A(4);
	R(5) <= NOT A(5);
	R(6) <= NOT A(6);
	R(7) <= NOT A(7);
	R(8) <= NOT A(8);
	R(9) <= NOT A(9);
	R(10) <= NOT A(10); 
	R(11) <= NOT A(11);
	R(12) <= NOT A(12);
	R(13) <= NOT A(13);
	R(14) <= NOT A(14);
	R(15) <= NOT A(15);
end Behavioral;

