--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:25:26 02/26/2016
-- Design Name:   
-- Module Name:   U:/vhdl/lab2/lab2/ALU_and_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_and
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
 
ENTITY ALU_and_tb IS
END ALU_and_tb;
 
ARCHITECTURE behavior OF ALU_and_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_and
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         R : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal R : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_and PORT MAP (
          A => A,
          B => B,
          R => R
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
		wait for 10 ns;
		A <= "1111111111111111";
		B <= "1111111111111111";
		
		wait for 10 ns;
		A <= "0000000000000000";
		B <= "1111111111111111";
		
		wait for 10 ns;
		A <= "0000100001000010";
		B <= "1111111111111111";
		
		wait for 10 ns;
		A <= "0101010101010101";
		B <= "0101010101010111";
      wait;
   end process;

END;
