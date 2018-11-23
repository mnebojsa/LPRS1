--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:53:35 11/23/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procRamRom/top_m_tb.vhd
-- Project Name:  procRamRom
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_module
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
 
ENTITY top_m_tb IS
END top_m_tb;
 
ARCHITECTURE behavior OF top_m_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_module
      PORT(iCLK   : in  std_logic;
           iRST   : in  std_logic;
           iRUN	: in  std_logic;
			  ird_mul: in  std_logic;
			  oWE    :out std_logic;
			  odummy : out std_logic_vector(15 downto 0) );
    END COMPONENT;
    

   --Inputs
   signal iCLK    : std_logic := '0';
   signal iRST    : std_logic := '1';
   signal iRUN    : std_logic := '0';
   signal ird_mul : std_logic := '0';
 	--Outputs
   signal odummy  : std_logic_vector(15 downto 0);
   signal oWE     : std_logic;
   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_module PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
			 ird_mul => ird_mul,
          iRUN => iRUN,
			 oWE   => oWE,
          odummy => odummy
        );

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 

    process
	 begin
		iRUN <= '1';
		    wait for iCLK_period;
		iRUN <= '0';
		    wait for iCLK_period*25;	 
	 end process;

   process(oWE, odummy)
	    variable vCnt : integer := 0;
		 variable vRes : integer := 0;
   begin
		 if oWE = '1' then
		     case vCnt is
			      when 0 =>
					    vRes := 8*7*6*5*4*3*2*1;
			      when 1 =>
					    vRes :=   7*6*5*4*3*2*1;
			      when 2 =>
					    vRes :=     6*5*4*3*2*1;
			      when 3 =>
					    vRes :=       5*4*3*2*1;
			      when 4 =>
					    vRes :=         4*3*2*1;
			      when 5 =>
					    vRes :=           3*2*1;
			      when 6 =>
					    vRes :=             2*1;
			      when 7 =>
					    vRes :=               1;
			      when others =>
					    vRes := 8*7*6*5*4*3*2*1;
           end case;	
			  
			  assert (to_integer(unsigned(odummy)) = vRes) 
			  report   "Wrong multipy result ....  !!!" 
			  severity error;
			  
           vCnt := vCnt +1;			  
		 end if;	
   end process;	
	 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
          iRST <= '0';
      -- insert stimulus here 
      wait;
   end process;

END;
