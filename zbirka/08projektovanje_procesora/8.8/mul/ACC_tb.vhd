--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:41:04 11/13/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/ACC_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ACC
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
 
ENTITY ACC_tb IS
END ACC_tb;
 
ARCHITECTURE behavior OF ACC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ACC
    PORT(
         inRESETn : IN  std_logic;
         iLOAD : IN  std_logic;
         iData : IN  std_logic_vector(7 downto 0);
         oData : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inRESETn : std_logic := '0';
   signal iLOAD : std_logic := '0';
   signal iData : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal oData : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ACC PORT MAP (
          inRESETn => inRESETn,
          iLOAD => iLOAD,
          iData => iData,
          oData => oData
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here 
          inRESETn <= '1';
		wait for 10 ns;
          iData <= "10110010";
		wait for 10 ns;
          iLOAD <= '1';	
		wait for 10 ns;
          iLOAD <= '0';			
      wait;
   end process;

END;
