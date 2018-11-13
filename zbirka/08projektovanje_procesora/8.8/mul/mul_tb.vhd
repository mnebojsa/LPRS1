--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:04:13 11/11/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/08projektovanje_procesora/8.8/mul/mul_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mul
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
 
ENTITY mul_tb IS
END mul_tb;
 
ARCHITECTURE behavior OF mul_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mul
    PORT(
         iCLK : IN  std_logic;
         iX : IN  std_logic_vector(3 downto 0);
         iY : IN  std_logic_vector(3 downto 0);
         iStart : IN  std_logic;
			iRSTn  : in std_logic;
         oRes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iX : std_logic_vector(3 downto 0) := (others => '0');
   signal iY : std_logic_vector(3 downto 0) := (others => '0');
   signal iRSTn : std_logic := '0';
   signal iStart : std_logic := '0';
	
 	--Outputs
   signal oRes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mul PORT MAP (
          iCLK => iCLK,
          iX => iX,
          iY => iY,
          iStart => iStart,
			 iRSTn => iRSTn,
          oRes => oRes
        );

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for iCLK_period*10;
      iRSTn <= '1';
		wait for iCLK_period;
      -- insert stimulus here 
          iX <= "1011";
			 iY <= "1101";
			 wait for iCLK_period * 2;	
              iStart <= '1';
      wait;
   end process;

END;
