--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:37:28 11/06/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/05standardne_sekvencijalne_mreze/5.1/reg4bit/reg4bit_tb.vhd
-- Project Name:  reg4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg4b
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
 
ENTITY reg4bit_tb IS
END reg4bit_tb;
 
ARCHITECTURE behavior OF reg4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg4b
    PORT(
         iCLK : IN  std_logic;
         iRSTn : IN  std_logic;
         iData : IN  std_logic_vector(3 downto 0);
			iWR_SHn     : in  std_logic;
         oSerialData : out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRSTn : std_logic := '0';
   signal iData : std_logic_vector(3 downto 0) := (others => '0');
   signal iWR_SHn : std_logic := '0'; 
 	--Outputs
   signal oSerialData : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg4b PORT MAP (
          iCLK => iCLK,
          iRSTn => iRSTn,
          iData => iData,
			 iWR_SHn => iWR_SHn,
          oSerialData => oSerialData
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
          iRSTn <= '1';
      -- insert stimulus here 
          iData <= "1001";
          iWR_SHn <= '1';
		wait for iCLK_period;	 
          iWR_SHn <= '0';
			 
      wait for iCLK_period*8;		
		    iData <= "1010";
          iWR_SHn <= '1';
		wait for iCLK_period;	 
          iWR_SHn <= '0';
			 
      wait for iCLK_period*8;		
		    iData <= "1100";	
          iWR_SHn <= '1';
		wait for iCLK_period;	 
          iWR_SHn <= '0';
			 
      wait for iCLK_period*8;		
		    iData <= "0011";	
          iWR_SHn <= '1';
		wait for iCLK_period;	 
          iWR_SHn <= '0';
			 
      wait;
   end process;

END;
