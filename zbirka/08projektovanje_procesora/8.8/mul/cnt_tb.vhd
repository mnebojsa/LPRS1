--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:36:31 11/13/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/cnt_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cnt
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
 
ENTITY cnt_tb IS
END cnt_tb;
 
ARCHITECTURE behavior OF cnt_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cnt
    PORT(
         iCLK : IN  std_logic;
         inRESETn : IN  std_logic;
         iEN : IN  std_logic;
         iP : IN  std_logic;
         oQ : OUT  std_logic_vector(1 downto 0);
         oTSE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRESETn : std_logic := '0';
   signal iEN : std_logic := '0';
   signal iP : std_logic := '0';

 	--Outputs
   signal oQ : std_logic_vector(1 downto 0);
   signal oTSE : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cnt PORT MAP (
          iCLK => iCLK,
          inRESETn => inRESETn,
          iEN => iEN,
          iP => iP,
          oQ => oQ,
          oTSE => oTSE
        );

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for iCLK_period*10;
          inRESETn <= '1';
      -- insert stimulus here 
		    iP <= '1';
		wait for iCLK_period;
			 iP <= '0';
		wait for iCLK_period;
          iEN <= '1';
      wait;
   end process;

END;
