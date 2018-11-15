--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:37:35 11/16/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.19/proc/ALU_tb.vhd
-- Project Name:  proc
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
         iSel : IN  std_logic_vector(2 downto 0);
         iA : IN  std_logic_vector(3 downto 0);
         iB : IN  std_logic_vector(3 downto 0);
         oH : OUT  std_logic_vector(3 downto 0);
         oC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iSel : std_logic_vector(2 downto 0) := (others => '0');
   signal iA : std_logic_vector(3 downto 0) := (others => '0');
   signal iB : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oH : std_logic_vector(3 downto 0);
   signal oC : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          iSel => iSel,
          iA => iA,
          iB => iB,
          oH => oH,
          oC => oC
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here 
     -- Add user defined stimulus here
            iA <= "0111";
				iB <= "1011";
				iSel <= "000";

				wait for 20 ns;
				    iSel <= "000";						  
				wait for 20 ns;
				    iSel <= "001";				 
				wait for 20 ns;
				    iSel <= "010";						 
				wait for 20 ns;
				    iSel <= "011";					 
				wait for 20 ns;
				    iSel <= "100";							 
				wait for 20 ns;
				    iSel <= "101";     						 
				wait for 20 ns;
				    iSel <= "110";				 
				wait for 20 ns;
				    iSel <= "111";					 
				wait for 20 ns;
					iSel <= "000";						
        wait; -- will wait forever
   end process;

END;
