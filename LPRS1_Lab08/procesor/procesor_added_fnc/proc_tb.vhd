--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:22:24 11/22/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procesor/proc_tb.vhd
-- Project Name:  procesor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: procesor
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
 
ENTITY proc_tb IS
END proc_tb;
 
ARCHITECTURE behavior OF proc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesor
    PORT(
         iCLK : IN  std_logic;
         iRST : IN  std_logic;
         iRUN : IN  std_logic;
         iINSTR : IN  std_logic_vector(9 downto 0);
         iDATA : IN  std_logic_vector(15 downto 0);
         oBUS : OUT  std_logic_vector(15 downto 0);
         oPC : OUT  std_logic_vector(15 downto 0);
         oDADDR : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '1';
   signal iRUN : std_logic := '0';
   signal iINSTR : std_logic_vector(9 downto 0) := (others => '0');
   signal iDATA : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal oBUS : std_logic_vector(15 downto 0);
   signal oPC : std_logic_vector(15 downto 0);
   signal oDADDR : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesor PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iRUN => iRUN,
          iINSTR => iINSTR,
          iDATA => iDATA,
          oBUS => oBUS,
          oPC => oPC,
          oDADDR => oDADDR
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

      -- insert stimulus here 
			iDATA <= "1111111110000000";
         iINSTR <= "0001001000";
			wait for iCLK_period;
         iRUN <= '1';
			wait for iCLK_period;
			    iRUN <= '0';

         wait for iCLK_period*10;	
			
         iRUN <= '1';
			iDATA <= "0000000001111111";
         iINSTR <= "0001010000";
			wait for iCLK_period;
			    iRUN <= '0';	
         
			wait for iCLK_period*10;

         iRUN <= '1';
         iINSTR <= "0010010010";
			wait for iCLK_period;
			    iRUN <= '0';	
         
			wait for iCLK_period*10;

         iRUN <= '1';
         iINSTR <= "0011010010";
			wait for iCLK_period;
			    iRUN <= '0';	
				 
      wait;
   end process;

END;
