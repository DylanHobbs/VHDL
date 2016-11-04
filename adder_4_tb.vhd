--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:41:17 02/24/2016
-- Design Name:   
-- Module Name:   U:/vhdl/lab2/lab2/adder_4_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_4
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
 
ENTITY adder_4_tb IS
END adder_4_tb;
 
ARCHITECTURE behavior OF adder_4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_4
    PORT(
         B : IN  std_logic_vector(15 downto 0);
         A : IN  std_logic_vector(15 downto 0);
         C0 : IN  std_logic;
         S : OUT  std_logic_vector(15 downto 0);
         C16 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal C0 : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(15 downto 0);
   signal C16 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_4 PORT MAP (
          B => B,
          A => A,
          C0 => C0,
          S => S,
          C16 => C16
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		A <= "0000000000000000";
		B <= "0000000000000000";
		C0 <= '0';

		wait for 100 ns;
		A <= "1111111111111111";	
		B <= "0000000000000000";
		C0 <= '0';
		
		wait for 100 ns;
		A <= "0000000000000000";	
		B <= "1111111111111111";
		C0 <= '0';
		
		wait for 100 ns;
		A <= "1111111111111111";	
		B <= "1111111111111111";
		C0 <= '0';
		
		wait for 100 ns;
		A <= "0000000000000000";	
		B <= "0000000000000000";
		C0 <= '1';
		
		wait for 100 ns;
		A <= "1111111111111111";	
		B <= "0000000000000000";
		C0 <= '1';
		
		wait for 100 ns;
		A <= "0000000000000000";	
		B <= "1111111111111111";
		C0 <= '1';
		
		wait for 100 ns;
		A <= "1111111111111111";	
		B <= "1111111111111111";
		C0 <= '1';

      wait;
   end process;

END;
