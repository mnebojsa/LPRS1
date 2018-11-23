--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:13:17 11/27/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab09/procRamRom/ROM_tb.vhd
-- Project Name:  procRamRom
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_mem
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
 
ENTITY ROM_tb IS
END ROM_tb;
 
ARCHITECTURE behavior OF ROM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM_mem
    PORT(
         oDATA : OUT  std_logic_vector(9 downto 0);
         iADDR : IN  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iADDR : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal oDATA : std_logic_vector(9 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM_mem PORT MAP (
          oDATA => oDATA,
          iADDR => iADDR
        );

   -- Clock process definitions
   ADDR_process :process
	    variable vADDR : unsigned(15 downto 0) := (others => '0');
   begin
		iADDR <= std_logic_vector(vADDR);
		wait for 30 ns;
		vADDR := vADDR + 1;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
