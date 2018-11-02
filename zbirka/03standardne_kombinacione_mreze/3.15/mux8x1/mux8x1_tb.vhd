--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:52:17 11/02/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/03standardne_kombinacione_mreze/3.15/mux8x1/mux8x1_tb.vhd
-- Project Name:  mux8x1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux8x1
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
 
ENTITY mux8x1_tb IS
END mux8x1_tb;
 
ARCHITECTURE behavior OF mux8x1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux8x1
    PORT(
         iD : IN  std_logic_vector(7 downto 0);
         iSel : IN  std_logic_vector(2 downto 0);
         oY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iD : std_logic_vector(7 downto 0) := (others => '0');
   signal iSel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal oY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
   constant add1_v3    : unsigned := "001";
	constant add1_v8    : unsigned := "00000001";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux8x1 PORT MAP (
          iD => iD,
          iSel => iSel,
          oY => oY
        );

   -- set input signal changes
   process
	    variable viD : unsigned(3 downto 0) := "00000000";   
   begin
	    wait for period;
       viD := unsigned(iD);
       viD := viD + add1_v4;
       iD  <= std_logic_vector(viD);		 
   end process;
 
   -- set Select signal changes
   process  
	  variable viSel : unsigned(1 downto 0) := "000";   
   begin
	    wait for period *256;
       viSel := unsigned(iSel);
       viSel := viSel + add1_v2;
       iSel  <= std_logic_vector(viSel);		 
   end process; 

   -- assert - check for errors
   process(iD, iSel)
   begin
       soY <= (not(iSel(2)) and not(iSel(1)) and not(iSel(0)) and iD(0)) or 
		        (not(iSel(2)) and not(iSel(1)) and     iSel(0)  and iD(1)) or 
              (not(iSel(2)) and     iSel(1)  and not(iSel(0)) and iD(2)) or 
              (not(iSel(2)) and     iSel(1)  and     iSel(0)  and iD(3)) or 
              (    iSel(2)  and not(iSel(1)) and not(iSel(0)) and iD(4)) or 
              (    iSel(2)  and not(iSel(1)) and     iSel(0)  and iD(5)) or 
              (    iSel(2)  and     iSel(1)  and not(iSel(0)) and iD(6)) or 
              (    iSel(2)  and     iSel(1)  and     iSel(0)  and iD(7)); 				  
	--if output values are different than expected - error	
	    assert oY = soY
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
