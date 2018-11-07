--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:01:53 11/07/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.6/digSys_6_6/digSys_6_6_tb.vhd
-- Project Name:  digSys_6_6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: digSys_6_6
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
 
ENTITY digSys_6_6_tb IS
END digSys_6_6_tb;
 
ARCHITECTURE behavior OF digSys_6_6_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digSys_6_6
    PORT(
         iCLK     : IN  std_logic;
         iRSTn    : IN  std_logic;
         iWe      : IN  std_logic;
         iOe      : IN  std_logic;
         iAddress : IN  std_logic_vector(1 downto 0);
         iD       : IN  std_logic_vector(3 downto 0);
         oQ       : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRSTn : std_logic := '0';
   signal iWe : std_logic := '0';
   signal iOe : std_logic := '0';
   signal iAddress : std_logic_vector(1 downto 0) := (others => '0');
   signal iD : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oQ : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digSys_6_6 PORT MAP (
          iCLK     => iCLK,
          iRSTn    => iRSTn,
          iWe      => iWe,
          iOe      => iOe,
          iAddress => iAddress,
          iD       => iD,
          oQ       => oQ
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

      -- insert stimulus here 

         iRSTn <= '1';
         iWe   <= '1';
         iOe   <= '0';
			
			wait for iCLK_period;
             iWe   <= '1';			   
			    iD       <= "1111";
             iAddress <= "00";
				 wait for iCLK_period;
             iWe   <= '0';
				 
			wait for iCLK_period;
             iWe   <= '1';			
			    iD       <= "1011";
             iAddress <= "01";
				 wait for iCLK_period;
             iWe   <= '0';
				 
			wait for iCLK_period;
             iWe   <= '1';			    
				 iD       <= "1101";
             iAddress <= "10";
				 wait for iCLK_period;
             iWe   <= '0';
				 
			wait for iCLK_period;
             iWe   <= '1';			    
				 iD       <= "1001";
             iAddress <= "11";
				 wait for iCLK_period;
             iWe   <= '0';



			wait for iCLK_period;
             iOe   <= '1';			   
             iAddress <= "00";
				 wait for iCLK_period;
             iOe   <= '0';
				 
			wait for iCLK_period;
             iOe   <= '1';			
             iAddress <= "01";
				 wait for iCLK_period;
             iOe   <= '0';
				 
			wait for iCLK_period;
             iOe   <= '1';			    
             iAddress <= "10";
				 wait for iCLK_period;
             iOe   <= '0';
				 
			wait for iCLK_period;
             iOe   <= '1';			    
             iAddress <= "11";
				 wait for iCLK_period;
             iOe   <= '0';

				 
      wait;
   end process;

END;
