--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:09:29 11/06/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.1/cnt2lcdDisplay/cnt2lcd_tb.vhd
-- Project Name:  cnt2lcdDisplay
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cnt2lcd
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
 
ENTITY cnt2lcd_tb IS
END cnt2lcd_tb;
 
ARCHITECTURE behavior OF cnt2lcd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cnt2lcd
    PORT(
         iCLK : IN  std_logic;
         inReset : IN  std_logic;
         iEn : IN  std_logic;
         oSSeg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK    : std_logic := '0';
   signal inReset : std_logic := '0';
   signal iEn     : std_logic := '1';

 	--Outputs
   signal oSSeg : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cnt2lcd PORT MAP (
          iCLK => iCLK,
          inReset => inReset,
          iEn => iEn,
          oSSeg => oSSeg
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
           inReset <= '1';
           iEn     <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
