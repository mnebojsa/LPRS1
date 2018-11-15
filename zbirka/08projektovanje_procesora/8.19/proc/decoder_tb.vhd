--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:00:07 11/19/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.19/proc/decoder_tb.vhd
-- Project Name:  proc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         iX : IN  std_logic_vector(1 downto 0);
         iEN : IN  std_logic;
         oY : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iX : std_logic_vector(1 downto 0) := (others => '0');
   signal iEN : std_logic := '0';

 	--Outputs
   signal oY : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          iX => iX,
          iEN => iEN,
          oY => oY
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      iEn <= '0';
      -- insert stimulus here 
		    wait for 20 ns;
			     iEn <= '1';
                  iX <= "00";
                  wait for 20 ns;	
                  iX <= "01";
                  wait for 20 ns;
                  iX <= "10";
                  wait for 20 ns;
                  iX <= "11";
                  wait for 20 ns;	
      iEn <= '0';						
      wait;
   end process;

END;
