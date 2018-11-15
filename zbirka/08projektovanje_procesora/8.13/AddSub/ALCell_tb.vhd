--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:02:10 11/15/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.13/AddSub/ALCell_tb.vhd
-- Project Name:  AddSub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALCell
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
USE ieee.numeric_std.ALL;
 
ENTITY ALCell_tb IS
END ALCell_tb;
 
ARCHITECTURE behavior OF ALCell_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALCell
    PORT(
         iA : IN  std_logic;
         iB : IN  std_logic;
         iC : IN  std_logic;
         iSel : IN  std_logic_vector(2 downto 0);
         oFnc : OUT  std_logic;
         oC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iA : std_logic := '0';
   signal iB : std_logic := '0';
   signal iC : std_logic := '0';
   signal iSel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal oFnc : std_logic;
   signal oC : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   signal sFullAdder_input : unsigned(2 downto 0) := "000";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALCell PORT MAP (
          iA => iA,
          iB => iB,
          iC => iC,
          iSel => iSel,
          oFnc => oFnc,
          oC => oC
        );

 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
          wait for 100 ns;	
      -- insert stimulus here 
		    iSel <= "000";
		    iC <= sFullAdder_input(2);
		    iA <= sFullAdder_input(1);
          iB <= sFullAdder_input(0);
			 
			for j in 0 to 3 loop		
					for i in 0 to 8 loop
						 wait for 20 ns; 
							  sFullAdder_input <= sFullAdder_input + "001";		
							  iC <= sFullAdder_input(2);
							  iA <= sFullAdder_input(1);
							  iB <= sFullAdder_input(0);
					end loop;
			      iSel <= std_logic_vector(unsigned(iSel) + "001");	
               wait for 50 ns;					
			end loop;		
      wait;
   end process;

END;
