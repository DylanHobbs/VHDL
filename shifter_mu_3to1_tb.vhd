--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:40:56 02/25/2016
-- Design Name:   
-- Module Name:   U:/vhdl/lab2/lab2/shifter_mu_3to1_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shifter_mu_3to1
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
 
ENTITY shifter_mu_3to1_tb IS
END shifter_mu_3to1_tb;
 
ARCHITECTURE behavior OF shifter_mu_3to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter_mu_3to1
    PORT(
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         H : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic := '0';
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal H : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter_mu_3to1 PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
          s => s,
          H => H
        );


	
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		in0 <= '1';
		in1 <= '0';
		in2 <= '1';
		
		s <= "00";
		wait for 10 ns;
		
		s <= "01";
		wait for 10 ns;
		
		s <= "10";
		wait for 10 ns;
		
		s <= "11";
		wait;
   end process;

END;
