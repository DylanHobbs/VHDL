--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:00:54 02/24/2016
-- Design Name:   
-- Module Name:   U:/vhdl/lab2/lab2/full_adder_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
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
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          x => x,
          y => y,
          z => z,
          s => s,
          c => c
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 30 ns;
		x <= '0';
		y <= '0';
		z <= '0';
		
		wait for 30 ns;
		x <= '0';
		y <= '0';
		z <= '1';
		
		wait for 30 ns;
		x <= '0';
		y <= '1';
		z <= '0';
		
		wait for 30 ns;
		x <= '0';
		y <= '1';
		z <= '1';
		
		wait for 30 ns;
		x <= '1';
		y <= '0';
		z <= '0';
		
		wait for 30 ns;
		x <= '1';
		y <= '0';
		z <= '1';
		
		wait for 30 ns;
		x <= '1';
		y <= '1';
		z <= '0';
		
		wait for 30 ns;
		x <= '1';
		y <= '1';
		z <= '1';
      wait;
   end process;

END;
