----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:57 02/24/2016 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port (x, y, z : in std_logic;
			s, c : out std_logic);
end full_adder;

architecture struc_dataflow_3 of full_adder is

	component half_adder
		port(x, y : in std_logic;
			s, c : out std_logic);
	end component;
	
	signal hs, hc, tc: std_logic;
	begin
		HA1: half_adder
			port map (x, y, hs, hc);
		HA2: half_adder
			port map (hs, z, s, tc);
		c <= tc or hc;
end struc_dataflow_3;

