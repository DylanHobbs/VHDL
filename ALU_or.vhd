----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:38 02/26/2016 
-- Design Name: 
-- Module Name:    ALU_or - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_or is
    Port (A : in STD_LOGIC_VECTOR(15 downto 0);
			 B : in STD_LOGIC_VECTOR(15 downto 0);
			 R : out STD_LOGIC_VECTOR(15 downto 0)
			 );
end ALU_or;

architecture Behavioral of ALU_or is
begin
	R(0) <= A(0) OR B(0);
	R(1) <= A(1) OR B(1);
	R(2) <= A(2) OR B(2);
	R(3) <= A(3) OR B(3);
	R(4) <= A(4) OR B(4);
	R(5) <= A(5) OR B(5);
	R(6) <= A(6) OR B(6);
	R(7) <= A(7) OR B(7);
	R(8) <= A(8) OR B(8);
	R(9) <= A(9) OR B(9);
	R(10) <= A(10) OR B(10);
	R(11) <= A(11) OR B(11);
	R(12) <= A(12) OR B(12);
	R(13) <= A(13) OR B(13);
	R(14) <= A(14) OR B(14);
	R(15) <= A(15) OR B(15);
end Behavioral;

