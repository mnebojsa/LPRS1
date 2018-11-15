--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:15:40 11/15/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.13/AddSub/ALU_tb.vhd
-- Project Name:  AddSub
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
         iSel : IN  std_logic_vector(4 downto 0);
         iA : IN  std_logic_vector(3 downto 0);
         iB : IN  std_logic_vector(3 downto 0);
         iC : IN  std_logic;
         oH : OUT  std_logic_vector(3 downto 0);
         oC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iSel : std_logic_vector(4 downto 0) := (others => '0');
   signal iA : std_logic_vector(3 downto 0) := (others => '0');
   signal iB : std_logic_vector(3 downto 0) := (others => '0');
   signal iC : std_logic := '0';

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
          iC => iC,
          oH => oH,
          oC => oC
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

        -- Add user defined stimulus here
            iA <= "0111";
				iB <= "0011";
				iSel <= "00000";

				wait for 20 ns;
				    iSel <= "11000";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						  
				wait for 20 ns;
				    iSel <= "11001";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						 
				wait for 20 ns;
				    iSel <= "11010";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						 
				wait for 20 ns;
				    iSel <= "11011";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						 
				wait for 20 ns;
				    iSel <= "11100";	
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						 
				wait for 20 ns;
				    iSel <= "11101";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						 
				wait for 20 ns;
				    iSel <= "11110";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						 
				wait for 20 ns;
				    iSel <= "11111";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						 
				wait for 20 ns;
					iSel <= "00000";
                    iC <= '0'; 
                wait for 10 ns;
                    iC <= '1';						
        wait; -- will wait forever
   end process;

END;
