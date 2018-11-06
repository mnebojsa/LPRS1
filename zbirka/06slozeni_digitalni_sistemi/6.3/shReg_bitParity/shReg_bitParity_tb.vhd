--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:29:57 11/06/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/zbirka/06slozeni_digitalni_sistemi/6.3/shReg_bitParity/shReg_bitParity_tb.vhd
-- Project Name:  shReg_bitParity
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shReg_bitParity
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
 
ENTITY shReg_bitParity_tb IS
END shReg_bitParity_tb;
 
ARCHITECTURE behavior OF shReg_bitParity_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shReg_bitParity
    PORT(
         iD : IN  std_logic_vector(3 downto 0);
         iSe : IN  std_logic;
         iLoad : IN  std_logic;
         inReset : IN  std_logic;
         iCLK : IN  std_logic;
         oQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iD : std_logic_vector(3 downto 0) := (others => '0');
   signal iSe : std_logic := '0';
   signal iLoad : std_logic := '0';
   signal inReset : std_logic := '0';
   signal iCLK : std_logic := '0';

 	--Outputs
   signal oQ : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shReg_bitParity PORT MAP (
          iD => iD,
          iSe => iSe,
          iLoad => iLoad,
          inReset => inReset,
          iCLK => iCLK,
          oQ => oQ
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

         inReset <= '1';
         iD <= "1010";
         iLoad <= '1';
      wait for iCLK_period; 
         iLoad <= '0';		
         iSe   <= '1';

      wait for iCLK_period*8; 			
			iSe   <= '0';
			
			
         iD <= "1011";
         iLoad <= '1';
      wait for iCLK_period; 
         iLoad <= '0';		
         iSe   <= '1';			
      wait;
   end process;

END;
