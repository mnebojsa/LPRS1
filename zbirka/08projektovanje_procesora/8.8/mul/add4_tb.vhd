--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:21:54 11/12/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/add4_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add4
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
 
ENTITY add4_tb IS
END add4_tb;
 
ARCHITECTURE behavior OF add4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add4
    PORT(
         iX : IN  std_logic_vector(3 downto 0);
         iY : IN  std_logic_vector(3 downto 0);
         oRes : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iX : std_logic_vector(3 downto 0) := (others => '0');
   signal iY : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oRes : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add4 PORT MAP (
          iX => iX,
          iY => iY,
          oRes => oRes
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
      iX <= "0101";
		iY <= "0011";
		 wait for 500 ns;
		iX <= "1111";
		iY <= "1011";
      wait;
   end process;

END;
