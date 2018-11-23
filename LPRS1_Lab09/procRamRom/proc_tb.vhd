--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:22:24 11/22/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procesor/proc_tb.vhd
-- Project Name:  procesor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: procesor
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
use work.command_list.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY proc_tb IS
END proc_tb;
 
ARCHITECTURE behavior OF proc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesor
    PORT(
         iCLK   : IN  std_logic;
         iRST   : IN  std_logic;
         iRUN   : IN  std_logic;
         iINSTR : IN  std_logic_vector(11 downto 0);
         iDATA  : IN  std_logic_vector(15 downto 0);
         oDATA  : OUT std_logic_vector(15 downto 0);
         oPC    : OUT std_logic_vector(15 downto 0);
		   oWE    : out std_logic;	
			oMulDone: out std_logic;
         oDADDR : OUT std_logic_vector(15 downto 0)			 			
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '1';
   signal iRUN : std_logic := '0';
   signal iINSTR : std_logic_vector(11 downto 0) := (others => '0');
   signal iDATA : std_logic_vector(15 downto 0) := (others => '0');
 	--Outputs
   signal oDATA : std_logic_vector(15 downto 0);
   signal oPC : std_logic_vector(15 downto 0);
   signal oDADDR : std_logic_vector(15 downto 0);
   signal oMulDone : std_logic;
	signal oWE : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesor PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iRUN => iRUN,
          iINSTR => iINSTR,
          iDATA => iDATA,
          oDATA => oDATA,
          oPC => oPC,
			 oWE => oWE,
			 oMulDone => oMulDone,
          oDADDR => oDADDR
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
          iRST <= '0';
      wait for iCLK_period*10;

      -- insert stimulus here 
		
--FILL REGs WITH DATA FROM MEMORY	
	
			iDATA <= "0000000000000001";
         iINSTR <= MVI & R0 & "----";
			wait for iCLK_period;
         iRUN <= '1';
			wait for iCLK_period;
			    iRUN <= '0';

         wait for iCLK_period*10;	
			
         iRUN <= '1';
			iDATA <= "0000000000000010";
         iINSTR <= MVI & R1 & "----";
			wait for iCLK_period;
			    iRUN <= '0';	
         
			wait for iCLK_period*10;

			iDATA <= "0000000000000011";
         iINSTR <= MVI & R2 & "----";
			wait for iCLK_period;
         iRUN <= '1';
			wait for iCLK_period;
			    iRUN <= '0';

         wait for iCLK_period*10;	
			
         iRUN <= '1';
			iDATA <= "0000000000000100";
         iINSTR <= MVI & R3 & "----";
			wait for iCLK_period;
			    iRUN <= '0';	
         
			wait for iCLK_period*10;
			
			iDATA <= "0000000000000101";
         iINSTR <= MVI & R4 & "----";
			wait for iCLK_period;
         iRUN <= '1';
			wait for iCLK_period;
			    iRUN <= '0';

         wait for iCLK_period*10;	
			
         iRUN <= '1';
			iDATA <= "0000000000000110";
         iINSTR <= MVI & R5 & "----";
			wait for iCLK_period;
			    iRUN <= '0';	
         
			wait for iCLK_period*10;

			iDATA <= "0000000000000111";
         iINSTR <= MVI & R6 & "----";
			wait for iCLK_period;
         iRUN <= '1';
			wait for iCLK_period;
			    iRUN <= '0';

         wait for iCLK_period*10;	
			
         iRUN <= '1';
			iDATA <= "0000000000001000";
         iINSTR <= MVI & R7 & "----";
			wait for iCLK_period;
			    iRUN <= '0';	

         
			wait for iCLK_period*10;		

-----------------------------------------------
--MOVE DATA FROM ODD TO EVEN REG NUMs

--         wait for iCLK_period*10;
--
--         iINSTR <= MV & R0 & R1;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= MV & R2 & R3;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;
--
--         iINSTR <= MV & R4 & R5;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;
--
--         iINSTR <= MV & R6 & R7;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;			
-----------------------------------------------

--         iRUN <= '1';
--         iINSTR <= MVA & "001---";
--			wait for iCLK_period;
--			    iRUN <= '0';	
--			wait for iCLK_period*10;
--
--         iRUN <= '1';
--         iINSTR <= MVG0 & "000---";
--			wait for iCLK_period;
--			    iRUN <= '0';	
--			wait for iCLK_period*10;	
--
--         iRUN <= '1';
--         iINSTR <= MVG1 & "001---";
--			wait for iCLK_period;
--			    iRUN <= '0';	
--			wait for iCLK_period*10;	
--
--         iRUN <= '1';
--         iINSTR <= MUL & "111001";
--			wait for iCLK_period;
--			    iRUN <= '0';	
--			wait for iCLK_period*10;				
----------------------------------------------	

--ADD odd and even(store in odd)	
	
--         wait for iCLK_period*10;	
--			
--         iINSTR <= ADD & R1 & R0;
--			wait for iCLK_period;
--			iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--         
--			wait for iCLK_period*10;
--
--         iINSTR <= ADD & R3 & R2;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= ADD & R5 & R4;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= ADD & R7 & R6;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
-------------------------------------------------  

--SUB odd and even(store in odd)		
--         wait for iCLK_period*10;	
--			
--         iINSTR <= SUB & R7 & R0;
--			wait for iCLK_period;
--			iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--         
--			wait for iCLK_period*10;
--
--         iINSTR <= SUB & R6 & R1;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= SUB & R5 & R2;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= SUB & R3 & R3;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
------------------------------------------------- 

--         wait for iCLK_period*10;	
--			
--         iRUN <= '1';
--			wait for iCLK_period;
--         iINSTR <= "0011000010";
--			wait for iCLK_period;
--			    iRUN <= '0';	
--         
--			wait for iCLK_period*10;
--
--         iINSTR <= "0011100110";
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= "0011000100";			
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--         wait for iCLK_period*10;				 				 
---------------------------------------------------
--       
--			wait for iCLK_period*10;
--			
--         iINSTR <= "0100000000";
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
-- iINSTR <= "1100000000";
-- wait for iCLK_period;
--  iINSTR <= "0100000000";
--			wait for iCLK_period*10;
--			
--         iINSTR <= "0100000000";
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
-- iINSTR <= "1100000000";
-- wait for iCLK_period;
--  iINSTR <= "0100000000";
--			wait for iCLK_period*10;
--			
--         iINSTR <= "0100000000";
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';					 
-- iINSTR <= "1100000000";
-- wait for iCLK_period;
--  iINSTR <= "0100000000";	
--			wait for iCLK_period*10;
--			
--         iINSTR <= "0101000000";
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	

-----------------------------------------------
--MULTIPLY and store Res
			wait for iCLK_period*10;
			
         iINSTR <= MUL & R7 & R6;
			wait for iCLK_period;
         iRUN <= '1';
			wait for iCLK_period;
			    iRUN <= '0';		
			
------------------------------------------------
--STORE DATA

--			wait for iCLK_period*20;
--			
--         iINSTR <= ST & R0 & G0;
--			wait for iCLK_period;
--			iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--         
--			wait for iCLK_period*10;
--			
--         iINSTR <= MV & R0 & G0;
--			wait for iCLK_period;
--			iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--         
--			wait for iCLK_period*10;			
--
--         iINSTR <= ST & R6 & R1;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= ST & R5 & R2;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
--
--         wait for iCLK_period*10;	
--			
--         iINSTR <= ST & R4 & R3;
--			wait for iCLK_period;
--         iRUN <= '1';
--			wait for iCLK_period;
--			    iRUN <= '0';	
				 
      wait;
   end process;

END;

