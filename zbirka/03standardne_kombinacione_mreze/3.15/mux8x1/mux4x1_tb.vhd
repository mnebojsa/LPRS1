--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:42:15 11/02/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/03standardne_kombinacione_mreze/3.15/mux8x1/mux4x1_tb.vhd
-- Project Name:  mux8x1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4x1
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
 
ENTITY mux4x1_tb IS
END mux4x1_tb;
 
ARCHITECTURE behavior OF mux4x1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4x1
    PORT(
         iD : IN  std_logic_vector(3 downto 0);
         iSel : IN  std_logic_vector(1 downto 0);
         oY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iD : std_logic_vector(3 downto 0) := (others => '0');
   signal iSel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal oY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period  : time      := 10 ns;

   constant add1_v4 : unsigned  := "0001";
	constant add1_v2 : unsigned  := "01";
	signal   soY     : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4x1 PORT MAP (
          iD => iD,
          iSel => iSel,
          oY => oY
        );

   -- set input signal changes
   process
	    variable viD : unsigned(3 downto 0) := "0000";   
   begin
	    wait for period;
       viD := unsigned(iD);
       viD := viD + add1_v4;
       iD  <= std_logic_vector(viD);		 
   end process;
 
   -- set Select signal changes
   process  
	  variable viSel : unsigned(1 downto 0) := "00";   
   begin
	    wait for period *16;
       viSel := unsigned(iSel);
       viSel := viSel + add1_v2;
       iSel  <= std_logic_vector(viSel);		 
   end process; 

   -- assert - check for errors
   process(iD, iSel)
   begin
       soY <= (not(iSel(1)) and not(iSel(0)) and iD(0)) or 
		        (not(iSel(1)) and     iSel(0)  and iD(1)) or 
              (    iSel(1)  and not(iSel(0)) and iD(2)) or 
              (    iSel(1)  and     iSel(0)  and iD(3));				  
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
