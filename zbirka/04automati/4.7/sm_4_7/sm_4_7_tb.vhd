--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:59:17 11/02/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/04automati/4.7/sm_4_7/sm_4_7_tb.vhd
-- Project Name:  sm_4_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sm_4_7
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
 
ENTITY sm_4_7_tb IS
END sm_4_7_tb;
 
ARCHITECTURE behavior OF sm_4_7_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sm_4_7
    PORT(
         CLK : IN  std_logic;
         RSTn : IN  std_logic;
         start : IN  std_logic;
         iA : IN  std_logic_vector(3 downto 0);
         iB : IN  std_logic_vector(3 downto 0);
         done : OUT  std_logic;
         e : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RSTn : std_logic := '0';
   signal start : std_logic := '0';
   signal iA : std_logic_vector(3 downto 0) := (others => '0');
   signal iB : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal done : std_logic;
   signal e : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sm_4_7 PORT MAP (
          CLK => CLK,
          RSTn => RSTn,
          start => start,
          iA => iA,
          iB => iB,
          done => done,
          e => e
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      RSTn <= '0';
      iA   <= "0100";
      iB   <= "0110";	
      wait for CLK_period*10;
      RSTn <= '1';
		wait for CLK_period*2;
      start  <= '0';
		wait for CLK_period*2;
      start  <= '1';      
      wait for CLK_period*2;
      start  <= '0';	

      wait for CLK_period*10;		
      iA   <= "0100";
      iB   <= "0100";	
      wait for CLK_period*10;
		wait for CLK_period*2;
      start  <= '1';      		

      wait for CLK_period*2;
      start  <= '0';			
		wait;
   end process;

END;
