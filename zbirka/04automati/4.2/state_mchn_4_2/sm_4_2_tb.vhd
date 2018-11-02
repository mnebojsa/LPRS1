--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:04:50 11/02/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/04automati/4.2/state_mchn_4_2/sm_4_2_tb.vhd
-- Project Name:  state_mchn_4_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sm_4_2
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
 
ENTITY sm_4_2_tb IS
END sm_4_2_tb;
 
ARCHITECTURE behavior OF sm_4_2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sm_4_2
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         iX : IN  std_logic;
         oY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal iX : std_logic := '0';

 	--Outputs
   signal oY : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sm_4_2 PORT MAP (
          clk => clk,
          rst => rst,
          iX => iX,
          oY => oY
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;


   process
   begin
		iX <= '0';
		wait for clk_period*8;
		iX <= '1';
		wait for clk_period*8;
   end process;
 
   --assert proc
--	process(clk, rst)
--	begin
--	    if rising_edge(clk) then
--		    if ('0' = rst) then
--			     --if output values are different than expected - error	
--			     assert stateNext = S1;
--				  report "stateNext different then expected" 
--				  severity error;
					
			     --if output values are different than expected - error	
--			     assert stateCurrent = S1;
--				  report "stateNext different then expected" 
--				  severity error;
				  
	   		  --if output values are different than expected - error	
--				  assert oY = '0';
--				  report "output signal different then expected" 
--				  severity error;			 
--			 elsif '0' = iX then
--					 case stateCurrent is
--						  when S1 => 
--								--if output values are different than expected - error	
--								assert stateNext = S1;
--								report "stateNext different then expected" 
--								severity error;
--								
--								--if output values are different than expected - error	
--								assert oY = '0';
--								report "output signal different then expected" 
--								severity error;
--						  when S2 => 
--								--if output values are different than expected - error	
--								assert stateNext = S1;
--								report "stateNext different then expected" 
--								severity error;
--								
								--if output values are different than expected - error	
--								assert oY = '0';
--								report "output signal different then expected" 
--								severity error;
--						  when S3 => 
--								--if output values are different than expected - error	
--								assert stateNext = S1;
--								report "stateNext different then expected" 
--								severity error;
								
								--if output values are different than expected - error	
--								assert oY = '1';
--								report "output signal different then expected" 
--								severity error;	
--						  when S4 => 
--								--if output values are different than expected - error	
--								assert stateNext = S3;
--								report "stateNext different then expected" 
--								severity error;
								
								--if output values are different than expected - error	
--								assert oY = '0';
--								report "output signal different then expected" 
--								severity error;								
--					 end case;
--			 else
--					 case stateCurrent is
--						  when S1 => 
--								--if output values are different than expected - error	
--								assert stateNext = S2;
--								report "stateNext different then expected" 
--								severity error;
--								
--								--if output values are different than expected - error	
--								assert oY = '0';
--								report "output signal different then expected" 
--								severity error;
--						  when S2 => 
--								--if output values are different than expected - error	
--								assert stateNext = S4;
--								report "stateNext different then expected" 
--								severity error;
--								
--								--if output values are different than expected - error	
--								assert oY = '0';
--								report "output signal different then expected" 
--								severity error;
--						  when S3 => 
--								--if output values are different than expected - error	
--								assert stateNext = S2;
--								report "stateNext different then expected" 
--								severity error;
--								
--								--if output values are different than expected - error	
--								assert oY = '0';
--								report "output signal different then expected" 
--								severity error;
--						  when S4 => 
--								--if output values are different than expected - error	
--								assert stateNext = S2;
--								report "stateNext different then expected" 
--								severity error;
--								
--								--if output values are different than expected - error	
--								assert oY = '0';
--								report "output signal different then expected" 
--								severity error;								
--					 end case;		 
--			 end if;				 
--		 end if;
--	end process;
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
