----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:35 02/26/2016 
-- Design Name: 
-- Module Name:    ALU_xor - Behavioral 
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

entity ALU_xor is
   Port ( A : in STD_LOGIC_VECTOR(15 downto 0);
			 B : in STD_LOGIC_VECTOR(15 downto 0);
			 R : out STD_LOGIC_VECTOR(15 downto 0)
			 );
end ALU_xor;

architecture Behavioral of ALU_xor is
begin
	R(0) <= A(0) XOR B(0);
	R(1) <= A(1) XOR B(1);
	R(2) <= A(2) XOR B(2);
	R(3) <= A(3) XOR B(3);
	R(4) <= A(4) XOR B(4);
	R(5) <= A(5) XOR B(5);
	R(6) <= A(6) XOR B(6);
	R(7) <= A(7) XOR B(7);
	R(8) <= A(8) XOR B(8);
	R(9) <= A(9) XOR B(9);
	R(10) <= A(10) XOR B(10);
	R(11) <= A(11) XOR B(11);
	R(12) <= A(12) XOR B(12);
	R(13) <= A(13) XOR B(13);
	R(14) <= A(14) XOR B(14);
	R(15) <= A(15) XOR B(15);

end Behavioral;

