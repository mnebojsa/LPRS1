--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:15:11 11/06/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/04automati/4.8/subSekvence_detection/subS_detection_tb.vhd
-- Project Name:  subSekvence_detection
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: subSDetect
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
USE ieee.numeric_std.ALL;
 
ENTITY subS_detection_tb IS
END subS_detection_tb;
 
ARCHITECTURE behavior OF subS_detection_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT subSDetect
    PORT(
         CLK : IN  std_logic;
         RSTn : IN  std_logic;
         iVal : IN  std_logic;
         oVec : OUT  std_logic_vector(3 downto 0);
         oDetect : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RSTn : std_logic := '0';
   signal iVal : std_logic := '0';

 	--Outputs
   signal oVec : std_logic_vector(3 downto 0);
   signal oDetect : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: subSDetect PORT MAP (
          CLK => CLK,
          RSTn => RSTn,
          iVal => iVal,
          oVec => oVec,
          oDetect => oDetect
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   iVal_process :process
	     variable vInSekvence : unsigned(3 downto 0) := "0000"; 
   begin
	   for i in 0 to 3 loop
          iVal <= vInSekvence(i);
			 wait for CLK_period;
      end loop;		
		vInSekvence := vInSekvence +1;

   end process;
	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for CLK_period*10;

      -- insert stimulus here 
           RSTn <= '1';
      wait;
   end process;

END;
