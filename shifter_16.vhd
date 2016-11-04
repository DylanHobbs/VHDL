----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:12 02/25/2016 
-- Design Name: 
-- Module Name:    shifter_16 - Behavioral 
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

entity shifter_16 is
    Port (
			  Hout : out STD_LOGIC_VECTOR(15 downto 0);
			  Bin : in STD_LOGIC_VECTOR(15 downto 0);
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           iR : in  STD_LOGIC;
           iL : in  STD_LOGIC);
end shifter_16;

architecture Behavioral of shifter_16 is

-- components
	-- 16 register for register file
	COMPONENT shifter_mu_3to1
	PORT(	  in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           H : out  STD_LOGIC	
		);
	END COMPONENT;

--signals
	--outputs
	signal SerialOutputL, SerialOutputR : STD_LOGIC;

begin
--portmaps
	mux_00 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(0),
		in1 => Bin(1),
		in2 => iL,
		s => s,
		H => Hout(0)
	);
	
	mux_01 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(1),
		in1 => Bin(2),
		in2 => Bin(0),
		s => s,
		H => Hout(1)
	);
	
	mux_02 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(2),
		in1 => Bin(3),
		in2 => Bin(1),
		s => s,
		H => Hout(2)
	);
	
	mux_03 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(3),
		in1 => Bin(4),
		in2 => Bin(2),
		s => s,
		H => Hout(3)
	);
	
	mux_04 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(4),
		in1 => Bin(5),
		in2 => Bin(3),
		s => s,
		H => Hout(4)
	);
	
	mux_05 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(5),
		in1 => Bin(6),
		in2 => Bin(4),
		s => s,
		H => Hout(5)
	);
	
	mux_06 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(6),
		in1 => Bin(7),
		in2 => Bin(5),
		s => s,
		H => Hout(6)
	);
	
	mux_07 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(7),
		in1 => Bin(8),
		in2 => Bin(6),
		s => s,
		H => Hout(7)
	);
	
	mux_08 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(8),
		in1 => Bin(9),
		in2 => Bin(7),
		s => s,
		H => Hout(8)
	);
	
	mux_09 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(9),
		in1 => Bin(10),
		in2 => Bin(8),
		s => s,
		H => Hout(9)
	);
	
	mux_10 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(10),
		in1 => Bin(11),
		in2 => Bin(9),
		s => s,
		H => Hout(10)
	);
	
	mux_11 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(11),
		in1 => Bin(12),
		in2 => Bin(10),
		s => s,
		H => Hout(11)
	);
	
	mux_12 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(12),
		in1 => Bin(13),
		in2 => Bin(11),
		s => s,
		H => Hout(12)
	);
	
	mux_13 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(13),
		in1 => Bin(14),
		in2 => Bin(12),
		s => s,
		H => Hout(13)
	);
	
	mux_14 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(14),
		in1 => Bin(15),
		in2 => Bin(13),
		s => s,
		H => Hout(14)
	);
	
	mux_15 : shifter_mu_3to1 PORT MAP(
		in0 => Bin(15),
		in1 => iR,
		in2 => Bin(14),
		s => s,
		H => Hout(15)
	);
	
end Behavioral;

