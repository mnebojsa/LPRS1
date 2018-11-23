--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:25 12/07/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/16bit_mnozac_iteracije/mnozac/COUNTER_tb.vhd
-- Project Name:  mnozac
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CNTR
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
 
ENTITY COUNTER_tb IS
END COUNTER_tb;
 
ARCHITECTURE behavior OF COUNTER_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CNTR
    PORT(
         iCLK : IN  std_logic;
         iRST : IN  std_logic;
         iStart : IN  std_logic;
         oDone : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '1';
   signal iStart : std_logic := '0';

 	--Outputs
   signal oDone : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CNTR PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iStart => iStart,
          oDone => oDone
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
          iRST <= '0';
      wait for iCLK_period*10;
          iStart <= '1';
			 wait for iCLK_period;
			     iStart <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
