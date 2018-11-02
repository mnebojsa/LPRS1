--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:01 11/03/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/04automati/4.7/sm_4_7/fsm_tb.vhd
-- Project Name:  sm_4_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fsm
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
 
ENTITY fsm_tb IS
END fsm_tb;
 
ARCHITECTURE behavior OF fsm_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsm
    PORT(
         CLK : IN  std_logic;
         RSTn : IN  std_logic;
         start : IN  std_logic;
         BPE : IN  std_logic;
         S : OUT  std_logic_vector(0 to 1);
         done : OUT  std_logic;
         equl : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RSTn : std_logic := '0';
   signal start : std_logic := '0';
   signal BPE : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(0 to 1);
   signal done : std_logic;
   signal equl : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 	signal vBPE : unsigned(0 to 3) := "0000";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm PORT MAP (
          CLK => CLK,
          RSTn => RSTn,
          start => start,
          BPE => BPE,
          S => S,
          done => done,
          equl => equl
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
	
	
--   start_process :process
--   begin
--		start <= '1';
--		wait for CLK_period;
--		start <= '0';
--		wait for CLK_period * 8;
--   end process;	
 
--BPE_process:
--	process(CLK)
--       variable vStart : std_logic;
--		 variable i      : integer :=0;
--	begin
--	    if '1' = start and '1' = RSTn then
--		     vStart := '1';
--		 end if;
		 
--	    if rising_edge(CLK) then
--	        if vStart = '1' then	
--			       i := (i + 1) mod 4;
--                BPE <= vBPE(i);	
--                if (i mod 4 = 0) then				  
--                    vBPE <= vBPE + "0001";
--						  vStart := '0';
--			       end if;
--			   end if;	  
--		 end if;	  
--	end process;

	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
		wait for 10 ns;
		    RSTn  <= '0';
      wait for 10 ns;	
          RSTn  <= '1';
      -- insert stimulus here 
      wait for CLK_period * 5;	
        vBPE <= "0000";  
			 start <= '1';
			 BPE <= '0';
		wait for CLK_period;	
			 BPE <= '0';
		wait for CLK_period;
			 BPE <= '0';
			 start <= '0';
		wait for CLK_period;
			 BPE <= '0';
		wait for CLK_period;		
		

      wait for CLK_period * 5;	
          vBPE <= "0001";  
			 start <= '1';
			 BPE <= '0';
		wait for CLK_period;	
			 BPE <= '0';
		wait for CLK_period;
			 BPE <= '0';
			 start <= '0';
		wait for CLK_period;
			 BPE <= '1';
		wait for CLK_period;	


      wait for CLK_period * 5;	
           vBPE <= "0010";
			 start <= '1';
			 BPE <= '0';
		wait for CLK_period;	
			 BPE <= '0';
		wait for CLK_period;
			 BPE <= '1';
			 start <= '0';
		wait for CLK_period;
			 BPE <= '0';
		wait for CLK_period;	


      wait for CLK_period * 5;	
          
			 start <= '1';
			  vBPE <= "0011";
			 BPE <= '0';
		wait for CLK_period;	
			 BPE <= '0';
		wait for CLK_period;
			 BPE <= '1';
			 start <= '0';
		wait for CLK_period;
			 BPE <= '1';
		wait for CLK_period;	


      wait for CLK_period * 5;	
          
			 start <= '1';
			  vBPE <= "0100";
			 BPE <= '0';
		wait for CLK_period;	
			 BPE <= '1';
		wait for CLK_period;
			 BPE <= '0';
			 start <= '0';
		wait for CLK_period;
			 BPE <= '0';
		wait for CLK_period;			
		

		start <= '1';
		 vBPE <= "1000";
			 BPE <= '1';
		wait for CLK_period;	
			 BPE <= '0';
		wait for CLK_period;
			 BPE <= '0';
			 start <= '0';
		wait for CLK_period;
			 BPE <= '0';
		wait for CLK_period;	

		start <= '1';
		 vBPE <= "0001";
			 BPE <= '0';
		wait for CLK_period;	
			 BPE <= '0';
		wait for CLK_period;
			 BPE <= '0';
			 start <= '0';
		wait for CLK_period;
			 BPE <= '1';
		wait for CLK_period;			
      wait;
   end process;

END;
