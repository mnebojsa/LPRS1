--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:07:08 11/02/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/04automati/4.7/sm_4_7/inst_counter_tb.vhd
-- Project Name:  sm_4_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY inst_counter_tb IS
END inst_counter_tb;
 
ARCHITECTURE behavior OF inst_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         iEn : IN  std_logic;
         iCLK : IN  std_logic;
         iRSTn : IN  std_logic;
         oCnt : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iEn : std_logic := '0';
   signal iCLK : std_logic := '0';
   signal iRSTn : std_logic := '0';

 	--Outputs
   signal oCnt : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          iEn => iEn,
          iCLK => iCLK,
          iRSTn => iRSTn,
          oCnt => oCnt
        );

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 
   -- Clock process definitions
   process
   begin
		iEn <= '0';
		wait for iCLK_period * 17;
		iEn <= '1';
		wait for iCLK_period * 14;
   end process;


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
          iRSTn <= '0';
      wait for iCLK_period*10;

      -- insert stimulus here 
          iRSTn <= '1';		

      wait;
   end process;

END;
