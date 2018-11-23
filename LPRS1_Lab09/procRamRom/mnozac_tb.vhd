--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:44:44 12/12/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab09/procRamRom/mnozac_tb.vhd
-- Project Name:  procRamRom
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MULTP
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
 
ENTITY mnozac_tb IS
END mnozac_tb;
 
ARCHITECTURE behavior OF mnozac_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MULTP
    PORT(
         iCLK : IN  std_logic;
         iRST : IN  std_logic;
         iRUN : IN  std_logic;
         G0_WE : IN  std_logic;
         G1_WE : IN  std_logic;
         iA : IN  std_logic_vector(15 downto 0);
         iB : IN  std_logic_vector(15 downto 0);
         oSerOut : OUT  std_logic;
         oDone : OUT  std_logic;
         oRes : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '0';
   signal iRUN : std_logic := '0';
   signal G0_WE : std_logic := '0';
   signal G1_WE : std_logic := '0';
   signal iA : std_logic_vector(15 downto 0) := (others => '0');
   signal iB : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal oSerOut : std_logic;
   signal oDone : std_logic;
   signal oRes : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MULTP PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iRUN => iRUN,
          G0_WE => G0_WE,
          G1_WE => G1_WE,
          iA => iA,
          iB => iB,
          oSerOut => oSerOut,
          oDone => oDone,
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
          iRST <= '0';   
      wait for iCLK_period*10;

      -- insert stimulus here 

    G0_WE <= '1';
    G1_WE <= '1';
    iA <= "0000000000000110";
    iB <= "0000000000111000";
	 
	 wait for iCLK_period *3;
	 G0_WE <= '0';
    G1_WE <= '0';
	 wait for iCLK_period;
	 iRUN <= '1';
	 wait for iCLK_period/2;
	 iRUN <= '0';	 
      wait;
   end process;

END;
