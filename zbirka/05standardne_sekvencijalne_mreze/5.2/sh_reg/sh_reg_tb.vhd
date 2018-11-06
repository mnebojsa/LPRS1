--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:23:48 11/06/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/05standardne_sekvencijalne_mreze/5.2/sh_reg/sh_reg_tb.vhd
-- Project Name:  sh_reg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sh_reg
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
 
ENTITY sh_reg_tb IS
END sh_reg_tb;
 
ARCHITECTURE behavior OF sh_reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sh_reg
    PORT(
         iCLK : IN  std_logic;
         iCLRn : IN  std_logic;
         iSEL : IN  std_logic_vector(1 downto 0);
         iDSR : IN  std_logic;
         iDSL : IN  std_logic;
         iData : IN  std_logic_vector(3 downto 0);
         oQ : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iCLRn : std_logic := '0';
   signal iSEL : std_logic_vector(1 downto 0) := (others => '0');
   signal iDSR : std_logic := '0';
   signal iDSL : std_logic := '0';
   signal iData : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oQ : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sh_reg PORT MAP (
          iCLK => iCLK,
          iCLRn => iCLRn,
          iSEL => iSEL,
          iDSR => iDSR,
          iDSL => iDSL,
          iData => iData,
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

          iCLRn <= '1';
          iData <= "1010";
			 iSEL  <= "00";
			 iDSR  <= '1';
			 iDSL  <= '0';
		
          wait for iCLK_period;
              iSEL  <= "00";
              wait for iCLK_period * 2;	
              iSEL  <= "01";
              wait for iCLK_period * 2;
              iSEL  <= "10";
              wait for iCLK_period * 2;
              iSEL  <= "11";
              wait for iCLK_period * 2;				  
      wait;
   end process;

END;
