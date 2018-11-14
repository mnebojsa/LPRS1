--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:14:08 11/13/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.12/8.12.b/Proc_CU/CU_tb.vhd
-- Project Name:  Proc_CU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU
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
 
ENTITY CU_tb IS
END CU_tb;
 
ARCHITECTURE behavior OF CU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU
    PORT(
         iCLK : IN  std_logic;
         iRSTn : IN  std_logic;
         inJ : IN  std_logic_vector(2 downto 0);
         inK : IN  std_logic_vector(2 downto 0);
         oQ : OUT  std_logic_vector(2 downto 0);
         oQn : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRSTn : std_logic := '0';
   signal inJ : std_logic_vector(2 downto 0) := (others => '0');
   signal inK : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal oQ : std_logic_vector(2 downto 0);
   signal oQn : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU PORT MAP (
          iCLK => iCLK,
          iRSTn => iRSTn,
          inJ => inJ,
          inK => inK,
          oQ => oQ,
          oQn => oQn
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
          iRSTn <= '1';
			 
      wait for iCLK_period*3;			 
          inJ <= "000";
          inK <= "000";
      wait for iCLK_period*3;			 
          inJ <= "001";
          inK <= "000";
      wait for iCLK_period*3;			 
          inJ <= "010";
          inK <= "000";
      wait for iCLK_period*3;			 
          inJ <= "011";
          inK <= "000";
      wait for iCLK_period*3;			 
          inJ <= "100";
          inK <= "000";
      wait for iCLK_period*3;			 
          inJ <= "101";
          inK <= "000";
      wait for iCLK_period*3;			 
          inJ <= "110";
          inK <= "000";
      wait for iCLK_period*3;			 
          inJ <= "111";
          inK <= "000";
      wait for iCLK_period*3;			 
      wait for iCLK_period*3;			 
          inJ <= "000";
          inK <= "001";
      wait for iCLK_period*3;			 
          inJ <= "001";
          inK <= "001";
      wait for iCLK_period*3;			 
          inJ <= "010";
          inK <= "001";
      wait for iCLK_period*3;			 
          inJ <= "011";
          inK <= "001";
      wait for iCLK_period*3;			 
          inJ <= "100";
          inK <= "001";
      wait for iCLK_period*3;			 
          inJ <= "101";
          inK <= "001";
      wait for iCLK_period*3;			 
          inJ <= "110";
          inK <= "001";
      wait for iCLK_period*3;			 
          inJ <= "111";
          inK <= "001";
      wait;
   end process;

END;
