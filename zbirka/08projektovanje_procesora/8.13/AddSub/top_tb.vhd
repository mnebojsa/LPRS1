--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:20:25 11/14/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.13/AddSub/top_tb.vhd
-- Project Name:  AddSub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
 
ENTITY top_tb IS
END top_tb;
 
ARCHITECTURE behavior OF top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         iCLK : IN  std_logic;
         iA : IN  std_logic_vector(4 downto 0);
         iB : IN  std_logic_vector(4 downto 0);
         iSelAdd : IN  std_logic;
         iSelSub : IN  std_logic;
         oH : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iA : std_logic_vector(4 downto 0) := (others => '0');
   signal iB : std_logic_vector(4 downto 0) := (others => '0');
   signal iSelAdd : std_logic := '0';
   signal iSelSub : std_logic := '0';

 	--Outputs
   signal oH : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          iCLK => iCLK,
          iA => iA,
          iB => iB,
          iSelAdd => iSelAdd,
          iSelSub => iSelSub,
          oH => oH
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
		iSelAdd <= '1';
		iSelSub <= '0';
          iA <= "00110";
          iB <= "10100";
      wait for iCLK_period*10;
		iSelAdd <= '0';
		iSelSub <= '1';		
      wait;
   end process;

END;
