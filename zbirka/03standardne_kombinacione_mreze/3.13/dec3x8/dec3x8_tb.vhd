--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:15:09 11/02/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/03standardne_kombinacione_mreze/3.13/dec3x8/dec3x8_tb.vhd
-- Project Name:  dec3x8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec3x8
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
 
ENTITY dec3x8_tb IS
END dec3x8_tb;
 
ARCHITECTURE behavior OF dec3x8_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec3x8
    PORT(
         iC : IN  std_logic;
         iB : IN  std_logic;
         iA : IN  std_logic;
         iE : IN  std_logic;
         oD : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iC : std_logic := '0';
   signal iB : std_logic := '0';
   signal iA : std_logic := '0';
   signal iE : std_logic := '0';

 	--Outputs
   signal oD : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
   signal vOD     : std_logic_vector(7 downto 0) := "00000000";
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec3x8 PORT MAP (
          iC => iC,
          iB => iB,
          iA => iA,
          iE => iE,
          oD => oD
        );

    -- Changes of LSB input bit of mux3x8
    process
    begin
	     iA <= not(iA);
		  wait for clk_period/2;
    end process;

    -- Changes of 2nd input bit of mux3x8 
    process
    begin
		 iB <= not(iB);
		 wait for clk_period;
    end process;

    -- Changes of MSB input bit of mux3x8	
	 process
    begin
	    iC <= not(iC);
		 wait for clk_period*2;
    end process;


    -- assert - check for errors
    process(iE, iA, iB, iC)
	     variable vOutput : unsigned(2 downto 0);
		  variable vCmp    : integer;		
    begin	
    -- put '1' on vOutput position of VOD to get expected result for curent 
    -- values of iC & iB & iA	
	     vOutput   := iC & iB & iA;
		  vCmp      := to_integer(vOutput);
		  vOD       <= "00000000";
		  vOD(vCmp) <= iE;
	 --if output values are different than expected - error	
		  assert oD = vOD
		  report "output signal different then expected" 
		  severity error;
		
    end process;

   -- Stimulus process
  stim_proc: 
	 process	
    begin		
   -- hold reset state for clk_period*10 ns.
        iE <= '0';
        wait for clk_period*10;
   -- set Enable signal to '1' 
        iE <= '1';
		
		wait;
   end process;

END;
