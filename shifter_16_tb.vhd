--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:24:24 02/25/2016
-- Design Name:   
-- Module Name:   U:/vhdl/lab2/lab2/shifter_16_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shifter_16
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
 
ENTITY shifter_16_tb IS
END shifter_16_tb;
 
ARCHITECTURE behavior OF shifter_16_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter_16
    PORT(
         Hout : OUT  std_logic_vector(15 downto 0);
         Bin : IN  std_logic_vector(15 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         iR : IN  std_logic;
         iL : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Bin : std_logic_vector(15 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal iR : std_logic := '0';
   signal iL : std_logic := '0';

 	--Outputs
   signal Hout : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter_16 PORT MAP (
          Hout => Hout,
          Bin => Bin,
          s => s,
          iR => iR,
          iL => iL
        );

 
   -- Stimulus process
	--01 shift right
	--10 shifts left
	--00 nothing 
	--11

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 50 ns;
		iR <= '0';
		iL <= '0';
		
		Bin <= "0101010101010101";
			--Shift right
		wait for 10 ns;
		s <= "01";

		
		wait for 10 ns;
		Bin <= "1111111111111111";
		s <= "10";
		
		
		wait for 10 ns;
		Bin <= "1111111111111111";
		s <= "01";
		
		wait for 10 ns;
		Bin <= "1000000000000000";
		s <= "10";
      wait;
   end process;

END;
