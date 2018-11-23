--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:55:48 11/27/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab09/procRamRom/RAM_tb.vhd
-- Project Name:  procRamRom
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_mem
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
 
ENTITY RAM_tb IS
END RAM_tb;
 
ARCHITECTURE behavior OF RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_mem
    PORT(
         iCLK  : IN  std_logic;
         iRST  : IN  std_logic;
         iADDR : IN  std_logic_vector(15 downto 0);
         iDATA : IN  std_logic_vector(15 downto 0);
         oDATA : OUT  std_logic_vector(15 downto 0);
         iWR   : IN  std_logic;
         iRD   : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '0';
   signal iADDR : std_logic_vector(15 downto 0) := (others => '0');
   signal iDATA : std_logic_vector(15 downto 0) := (others => '0');
   signal iWR : std_logic := '0';
   signal iRD : std_logic := '0';

 	--Outputs
   signal oDATA : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_mem PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iADDR => iADDR,
          iDATA => iDATA,
          oDATA => oDATA,
          iWR => iWR,
          iRD => iRD
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
		iADDR <= "0000000000000000";
      iDATA <= "0000000000000001";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';

     wait for iCLK_period*5;

		iADDR <= "0000000000000001";
      iDATA <= "0000000000000011";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';

     wait for iCLK_period*5;

		iADDR <= "0000000000000010";
      iDATA <= "0000000000000111";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';

     wait for iCLK_period*5;

		iADDR <= "0000000000000011";
      iDATA <= "0000000000001111";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';

     wait for iCLK_period*5;

		iADDR <= "0000000000000100";
      iDATA <= "0000000000011111";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';

     wait for iCLK_period*5;

		iADDR <= "0000000000000101";
      iDATA <= "0000000000111111";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';

     wait for iCLK_period*5;

		iADDR <= "0000000000000110";
      iDATA <= "0000000000111111";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';

     wait for iCLK_period*5;

		iADDR <= "0000000000000111";
      iDATA <= "0000000001111111";		
      iWR <= '1';
      wait for iCLK_period;	
          iWR <= '0';
			 
     wait for iCLK_period*5;
      wait;
   end process;

END;
