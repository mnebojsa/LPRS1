--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:45:52 11/19/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procesor/ALU_tb.vhd
-- Project Name:  procesor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         iX : IN  std_logic_vector(15 downto 0);
         iY : IN  std_logic_vector(15 downto 0);
         iSel : IN  std_logic_vector(0 downto 0);
         oCarry : OUT  std_logic;
         oResult : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iX : std_logic_vector(15 downto 0) := (others => '0');
   signal iY : std_logic_vector(15 downto 0) := (others => '0');
   signal iSel : std_logic_vector(0 downto 0) := (others => '0');

 	--Outputs
   signal oCarry : std_logic;
   signal oResult : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          iX => iX,
          iY => iY,
          iSel => iSel,
          oCarry => oCarry,
          oResult => oResult
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
          iX <= "1010101010101010";
          iY <= "0101010101010101";

      -- insert stimulus here 
      wait for 20 ns;
		    iSel <= "0";
		wait for 20 ns;
		    iSel <= "1";
		wait for 20 ns;
		    iSel <= "1";
          iX <= "0000000000000000";
          iY <= "0000000000000000";			 
      wait;
   end process;

END;
