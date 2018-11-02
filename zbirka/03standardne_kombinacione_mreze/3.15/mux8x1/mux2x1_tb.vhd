--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:21:37 11/02/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/03standardne_kombinacione_mreze/3.15/mux8x1/mux2x1_tb.vhd
-- Project Name:  mux8x1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2x1
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
 
ENTITY mux2x1_tb IS
END mux2x1_tb;
 
ARCHITECTURE behavior OF mux2x1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2x1
    PORT(
         iD : IN  std_logic_vector(1 downto 0);
         iSel : IN  std_logic;
         oY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iD : std_logic_vector(1 downto 0) := (others => '0');
   signal iSel : std_logic := '0';

 	--Outputs
   signal oY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time     := 10 ns;
   constant add1_v2    : unsigned := "01";
	signal   soY        : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2x1 PORT MAP (
          iD => iD,
          iSel => iSel,
          oY => oY
        );
 
   -- set input signal changes
   process
	    variable siD : unsigned(1 downto 0) := "00";   
   begin
       siD := unsigned(iD);
       siD := siD + add1_v2;
       iD  <= std_logic_vector(siD);
       wait for clk_period *2;		 
   end process;
 
   -- set Select signal changes
   process   
   begin
       iSel  <= not(iSel);
       wait for clk_period;		 
   end process; 

    -- assert - check for errors
    process(iD, iSel)
	     --variable voY : std_logic;
    begin	
        voY <= (not(iSel) and iD(0)) or (iSel and iD(1)); 
	 --if output values are different than expected - error	
		  assert oY = voY
		  report "output signal different then expected" 
		  severity error;
    end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;


END;
