--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:22:48 03/08/2016
-- Design Name:   
-- Module Name:   U:/vhdl/lab2/lab2/ALU_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         Cin : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         Cflag : OUT  std_logic;
         Vflag : OUT  std_logic;
         G : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal Cin : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';

 	--Outputs
   signal Cflag : std_logic;
   signal Vflag : std_logic;
   signal G : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          Cflag => Cflag,
          Vflag => Vflag,
          G => G
        );


   -- Stimulus process
   stim_proc: process
   begin		
	--001 0 test addition
		wait for 10 ns;
		A <= "0000000000000001";
		B <= "0000000000000001";
		wait for 10 ns;
		Cin <= '0';
		S0 <= '0';
		S1 <= '0';
		S2 <= '1';
		
	--001 1 test A+B +1
		wait for 10 ns;
		A <= "0000000000000001";
		wait for 10 ns;
		Cin <= '1';
		S0 <= '0';
		S1 <= '0';
		S2 <= '1';
	
	--010 0 
      wait;
   end process;

END;
