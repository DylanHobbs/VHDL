----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:12 03/08/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR(15 downto 0);
           B : in  STD_LOGIC_VECTOR(15 downto 0);
           Cin : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           Cflag : out  STD_LOGIC;
			  Vflag : out STD_LOGIC;
           G : out  STD_LOGIC_VECTOR(15 downto 0));
end ALU;

	
architecture Behavioral of ALU is

--components
component logic
		port(input_1 : in  STD_LOGIC_VECTOR(15 downto 0);
		    input_2 : in  STD_LOGIC_VECTOR(15 downto 0);
          sel_0, sel_1 : in  STD_LOGIC;
          logical_output : out  STD_LOGIC_VECTOR(15 downto 0)
			 );
end component;

component adder_4
	 Port ( B : in  STD_LOGIC_VECTOR(15 downto 0);
           A : in  STD_LOGIC_VECTOR(15 downto 0);
           C0 : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(15 downto 0);
			  C16: out STD_LOGIC
			  );
end component;

--signals
signal logic_out, ripple_out, ripple_in_2 : std_logic_vector(15 downto 0);

begin         
		ripple_in_2 <= not B after 5 ns when S0='0' and S1='1' and S2='0' else
		"0000000000000000" after 5 ns when S0='0' and S1='0' and S2='0' else
		"0000000000000000" after 5 ns when S0='0' and S1='1' and S2='1' else
		B after 5 ns;
 
		adder : adder_4 PORT MAP(
			A => A,
			B => ripple_in_2,
			C0 => Cin,
			S => ripple_out,
			C16 => Cflag
		);
 
		logicU : logic PORT MAP(
			input_1 => A,
			input_2 => B,
			sel_0 => S1,
			sel_1 => S2,
			logical_output => logic_out
		);
 
-- This acts as a simple 2-1 Mux
		G <= ripple_out after 5 ns when S0='0' else
		logic_out after 5 ns when S0='1' else
		"0000000000000000" after 5 ns;
		
		Vflag <= '1' after 5 ns when A(15)='1' and ripple_in_2(15)='1' and ripple_out(15)='0' else
					'1' after 5 ns when A(15)='0' and ripple_in_2(15)='0' and ripple_out(15)='1' else
					'0' after 5 ns;
end Behavioral;

