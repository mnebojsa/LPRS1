--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:05:30 11/07/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/07memorije/7.3/fifo/fifo_tb.vhd
-- Project Name:  fifo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fifo
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
 
ENTITY fifo_tb IS
END fifo_tb;
 
ARCHITECTURE behavior OF fifo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fifo
    PORT(
         iCLK : IN  std_logic;
         iRST : IN  std_logic;
         iWR : IN  std_logic;
         iRD : IN  std_logic;
         iDATA : IN  std_logic_vector(7 downto 0);
         oDATA : OUT  std_logic_vector(7 downto 0);
         oEMPTY : OUT  std_logic;
         oFULL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '0';
   signal iWR : std_logic := '0';
   signal iRD : std_logic := '0';
   signal iDATA : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal oDATA : std_logic_vector(7 downto 0);
   signal oEMPTY : std_logic;
   signal oFULL : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fifo PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iWR => iWR,
          iRD => iRD,
          iDATA => iDATA,
          oDATA => oDATA,
          oEMPTY => oEMPTY,
          oFULL => oFULL
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
      iRST <= '1';
		wait for iCLK_period;
		iRST <= '0';
      wait for iCLK_period*10;

      -- insert stimulus here 
      for i in 0 to 10 loop 
		    iWr <= '1';
			 iData <= std_logic_vector(to_unsigned(i * 5, 8));
			 wait for iCLK_period;
			 iWr <= '0';
			 wait for iCLK_period;
		end loop;

      wait for iCLK_period * 3;
		
      for i in 0 to 10 loop 
		    iRD <= '1';
			 iData <= std_logic_vector(to_unsigned(i * 5, 8));
			 wait for iCLK_period;
			 iRD <= '0';
			 wait for iCLK_period;
		end loop;
		
      wait;
   end process;

END;
