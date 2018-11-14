--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:04:55 11/13/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.12/8.12.b/Proc_CU/procCU_tb.vhd
-- Project Name:  Proc_CU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Proc_CU_top
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
 
ENTITY procCU_tb IS
END procCU_tb;
 
ARCHITECTURE behavior OF procCU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Proc_CU_top
    PORT(
         iCLK : IN  std_logic;
         iRSTn : IN  std_logic;
         iX : IN  std_logic;
         iY : IN  std_logic;
         oD : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRSTn : std_logic := '0';
   signal iX : std_logic := '0';
   signal iY : std_logic := '0';

 	--Outputs
   signal oD : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Proc_CU_top PORT MAP (
          iCLK => iCLK,
          iRSTn => iRSTn,
          iX => iX,
          iY => iY,
          oD => oD
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
          iRSTn <= '1';

      -- insert stimulus here 
      wait for iCLK_period*20;
         iX <= '0';
			iY <= '0';
			
      wait for iCLK_period*20;
         iX <= '0';
			iY <= '1';

      wait for iCLK_period*20;
         iX <= '1';
			iY <= '0';

      wait for iCLK_period*20;
         iX <= '1';
			iY <= '1';			
      wait;
   end process;

END;
