--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:24:27 11/13/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/reg_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg
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
 
ENTITY reg_tb IS
END reg_tb;
 
ARCHITECTURE behavior OF reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg
    PORT(
         iCLK : IN  std_logic;
         inCLR : IN  std_logic;
         iCE : IN  std_logic;
         iD : IN  std_logic_vector(3 downto 0);
         oQ : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inCLR : std_logic := '1';
   signal iCE : std_logic := '0';
   signal iD : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oQ : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg PORT MAP (
          iCLK => iCLK,
          inCLR => inCLR,
          iCE => iCE,
          iD => iD,
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
          wait for iCLK_period * 5;			 
          iCE <= '1';
          wait for iCLK_period;
			 iCE <= '0';
          wait for iCLK_period * 5;
			 inCLR <= '0';
			 iD <= "1110";
			 wait for iCLK_period;
			 inCLR <= '1';
			 iCE <= '1';
          wait for iCLK_period;
			 iCE <= '0';
			 wait for iCLK_period * 5;
			 
      wait;
   end process;

END;
