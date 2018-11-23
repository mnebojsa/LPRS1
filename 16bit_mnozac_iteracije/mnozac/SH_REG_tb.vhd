--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:46:16 11/30/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/16bit_mnozac_iteracije/mnozac/SH_REG_tb.vhd
-- Project Name:  mnozac
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SH_REG
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
 
ENTITY SH_REG_tb IS
END SH_REG_tb;
 
ARCHITECTURE behavior OF SH_REG_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SH_REG
    PORT(
         iCLK    : IN  std_logic;
         iRST    : IN  std_logic;
         iData   : IN  std_logic_vector(3 downto 0);
         iSerIn  : IN  std_logic;
         iWR_EN  : IN  std_logic;
         iSH_EN  : IN  std_logic;
         oSerOut : OUT std_logic;
         oPrlOut : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '1';
   signal iData : std_logic_vector(3 downto 0) := (others => '0');
   signal iSerIn : std_logic := '0';
   signal iWR_EN : std_logic := '0';
   signal iSH_EN : std_logic := '0';

 	--Outputs
   signal oSerOut : std_logic;
   signal oPrlOut : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SH_REG PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iData => iData,
          iSerIn => iSerIn,
          iWR_EN => iWR_EN,
          iSH_EN => iSH_EN,
          oSerOut => oSerOut,
          oPrlOut => oPrlOut
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
          iData <= "1010";
			 iWR_EN <= '1';
		wait for iCLK_period;
		    iWR_EN <= '0';
		wait for iCLK_period;	 
          iSerIn <= '1';
          iSH_EN <= '1';
		wait for iCLK_period*5;	
          iSerIn <= '0';		
      wait;
   end process;

END;
