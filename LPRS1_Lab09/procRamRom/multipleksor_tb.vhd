--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:15:12 11/22/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procesor/multipleksor_tb.vhd
-- Project Name:  procesor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplekser
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
use work.mux_generics.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY multipleksor_tb IS
END multipleksor_tb;
 
ARCHITECTURE behavior OF multipleksor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplekser
    PORT(
         iX : IN  WORD_ARRAY_type;
         iDATA_SEL : IN  std_logic;
         iG_SEL : IN  std_logic;
         iREG_SEL : IN  std_logic_vector(2 downto 0);
         oData : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iX : WORD_ARRAY_type := (others => "0000000000000000");
   signal iDATA_SEL : std_logic := '0';
   signal iG_SEL : std_logic := '0';
   signal iREG_SEL : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal oData : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplekser PORT MAP (
          iX => iX,
          iDATA_SEL => iDATA_SEL,
          iG_SEL => iG_SEL,
          iREG_SEL => iREG_SEL,
          oData => oData
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here	
      iDATA_SEL <= '0';
      iG_SEL 	 <= '0';	
		iREG_SEL <= "000";

      iX(0)  <= "0000111100001111";
      iX(1)  <= "0000000000000001";
      iX(2)  <= "0000000000000011";
      iX(3)  <= "0000000000000111";
      iX(4)  <= "0000000000001111";
      iX(5)  <= "0000000000011111";
      iX(6)  <= "0000000000111111";
      iX(7)  <= "0000000001111111";
      iX(8)  <= "0000000011111111";
      iX(9)  <= "1111111111111111";

      -- hold reset state for 100 ns.
      wait for 20 ns;	
      -- insert stimulus here 

      iG_Sel <= '1';
		    wait for 10 ns;
		iG_Sel <= '0';	 
          wait for 10 ns;
			 
      wait for 100 ns;	

      iDATA_SEL <= '1';
		    wait for 10 ns;
		iDATA_SEL <= '0';	 
          wait for 10 ns;	
			 
      iREG_SEL <= "000";
		    wait for 10 ns;
		iREG_SEL <= "111";	 
          wait for 10 ns;      
		
      wait;
   end process;

END;
