--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:38:57 11/29/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/16bit_mnozac_kombinaciono/boliMeCuna/nBitAdder_tb.vhd
-- Project Name:  nbitAdder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nBitAdder
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
 
ENTITY nBitAdder_tb IS
END nBitAdder_tb;
 
ARCHITECTURE behavior OF nBitAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nBitAdder
    PORT(
         iL : IN  std_logic_vector(4 downto 0);
         iCarry : IN  std_logic;
         oRes : OUT  std_logic;
         oCarry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iL : std_logic_vector(4 downto 0) := (others => '0');
   signal iCarry : std_logic := '0';

 	--Outputs
   signal oRes : std_logic;
   signal oCarry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nBitAdder PORT MAP (
          iL => iL,
          iCarry => iCarry,
          oRes => oRes,
          oCarry => oCarry
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
      iL <= "11111";
		iCarry <= '0';
	      wait for 100 ns;
      iL <= "11111";
		iCarry <= '1';
			
      wait;
   end process;

END;
