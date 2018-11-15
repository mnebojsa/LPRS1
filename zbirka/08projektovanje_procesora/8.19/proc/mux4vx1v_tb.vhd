--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:51:11 11/19/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.19/proc/mux4vx1v_tb.vhd
-- Project Name:  proc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muc4vx1v
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
 
ENTITY mux4vx1v_tb IS
END mux4vx1v_tb;
 
ARCHITECTURE behavior OF mux4vx1v_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muc4vx1v
    PORT(
         iX0 : IN  std_logic_vector(3 downto 0);
         iX1 : IN  std_logic_vector(3 downto 0);
         iX2 : IN  std_logic_vector(3 downto 0);
         iX3 : IN  std_logic_vector(3 downto 0);
         iSEL : IN  std_logic_vector(1 downto 0);
         oY : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iX0 : std_logic_vector(3 downto 0) := (others => '0');
   signal iX1 : std_logic_vector(3 downto 0) := (others => '0');
   signal iX2 : std_logic_vector(3 downto 0) := (others => '0');
   signal iX3 : std_logic_vector(3 downto 0) := (others => '0');
   signal iSEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal oY : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muc4vx1v PORT MAP (
          iX0 => iX0,
          iX1 => iX1,
          iX2 => iX2,
          iX3 => iX3,
          iSEL => iSEL,
          oY => oY
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
          iX0 <= "1001";
          iX1 <= "1101";
          iX2 <= "1011";
          iX3 <= "1010";

          iSEL <= "00";
          wait for 20 ns;	
          iSEL <= "01";
          wait for 20 ns;
          iSEL <= "10";
          wait for 20 ns;
          iSEL <= "11";
          wait for 20 ns;			 
      wait;
   end process;

END;
