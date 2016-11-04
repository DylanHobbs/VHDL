--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:54:14 03/08/2016
-- Design Name:   
-- Module Name:   U:/vhdl/lab2/lab2/logic_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: logic
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
 
ENTITY logic_tb IS
END logic_tb;
 
ARCHITECTURE behavior OF logic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic
    PORT(
         input_1 : IN  std_logic_vector(15 downto 0);
         input_2 : IN  std_logic_vector(15 downto 0);
         sel_0 : IN  std_logic;
         sel_1 : IN  std_logic;
         logical_output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal input_2 : std_logic_vector(15 downto 0) := (others => '0');
   signal sel_0 : std_logic := '0';
   signal sel_1 : std_logic := '0';

 	--Outputs
   signal logical_output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic PORT MAP (
          input_1 => input_1,
          input_2 => input_2,
          sel_0 => sel_0,
          sel_1 => sel_1,
          logical_output => logical_output
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		sel_0 <= '0';
		sel_1 <= '0';
		input_1 <= "0000100001000010";
		input_2 <= "1111111111111111";
		
		wait for 10 ns;
		sel_0 <= '0';
		sel_1 <= '1';
		input_1 <= "0000100001000010";
		input_2 <= "1111111111111111";
		
		wait for 10 ns;
		sel_0 <= '1';
		sel_1 <= '0';
		input_1 <= "0000100001000010";
		input_2 <= "1111111111111111";
		
		wait for 10 ns;
		sel_0 <= '1';
		sel_1 <= '1';
		input_1 <= "1111111111111111";
      -- insert stimulus here 

      wait;
   end process;

END;
