--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:45:34 11/13/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/command_unit_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: command_unit
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
 
ENTITY command_unit_tb IS
END command_unit_tb;
 
ARCHITECTURE behavior OF command_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT command_unit
    PORT(
         iCLK : IN  std_logic;
         inRESETn : IN  std_logic;
         iSTART : IN  std_logic;
         iY0 : IN  std_logic;
         iCNT_0 : IN  std_logic;
         oLoad_Cnt : OUT  std_logic;
         oLoad_X : OUT  std_logic;
         oLoad_Y : OUT  std_logic;
         oLoad_A : OUT  std_logic;
         onRSTn_A : OUT  std_logic;
         oCE : OUT  std_logic;
         oREADY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRESETn : std_logic := '0';
   signal iSTART : std_logic := '0';
   signal iY0 : std_logic := '0';
   signal iCNT_0 : std_logic := '0';

 	--Outputs
   signal oLoad_Cnt : std_logic;
   signal oLoad_X : std_logic;
   signal oLoad_Y : std_logic;
   signal oLoad_A : std_logic;
   signal onRSTn_A : std_logic;
   signal oCE : std_logic;
   signal oREADY : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: command_unit PORT MAP (
          iCLK => iCLK,
          inRESETn => inRESETn,
          iSTART => iSTART,
          iY0 => iY0,
          iCNT_0 => iCNT_0,
          oLoad_Cnt => oLoad_Cnt,
          oLoad_X => oLoad_X,
          oLoad_Y => oLoad_Y,
          oLoad_A => oLoad_A,
          onRSTn_A => onRSTn_A,
          oCE => oCE,
          oREADY => oREADY
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

      -- insert stimulus here 
          inRESETn <= '1';
		wait for iCLK_period;	
          iSTART   <= '1';
		wait for iCLK_period;	
          iY0 <= '1';	
			 iSTART   <= '0';
		wait for iCLK_period;	
          iY0 <= '1';
		wait for iCLK_period;	
          iY0 <= '0';
		wait for iCLK_period;	
          iY0 <= '0';
		wait for iCLK_period;	
          iY0 <= '1';
		wait for iCLK_period;	
          iY0 <= '1';
		wait for iCLK_period;	
          iY0 <= '0';
		wait for iCLK_period;	
          iY0 <= '1';
		wait for iCLK_period;
          iCNT_0 <= '1';		
      wait;
   end process;

END;
