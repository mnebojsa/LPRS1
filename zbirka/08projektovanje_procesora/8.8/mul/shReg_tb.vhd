--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:30:43 11/13/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/shReg_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shReg
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
 
ENTITY shReg_tb IS
END shReg_tb;
 
ARCHITECTURE behavior OF shReg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shReg
    PORT(
         iCLK : IN  std_logic;
         inCLRn : IN  std_logic;
         iLOAD : IN  std_logic;
         iSE : IN  std_logic;
         iD : IN  std_logic_vector(3 downto 0);
         oDSR : OUT  std_logic;
         oQ : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inCLRn : std_logic := '0';
   signal iLOAD : std_logic := '0';
   signal iSE : std_logic := '0';
   signal iD : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oDSR : std_logic;
   signal oQ : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shReg PORT MAP (
          iCLK => iCLK,
          inCLRn => inCLRn,
          iLOAD => iLOAD,
          iSE => iSE,
          iD => iD,
          oDSR => oDSR,
          oQ => oQ
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
          iD <= "1010";
		    inCLRn <= '1';
		wait for iCLK_period;
		    iLOAD <= '1';
		wait for iCLK_period;
		    iLOAD <= '0';
		wait for iCLK_period*5;
		    iSE <= '1';
      wait;
   end process;

END;
