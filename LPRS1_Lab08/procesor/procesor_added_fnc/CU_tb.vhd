--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:36:54 11/22/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/LPRS1_Lab08/procesor/procesor/CU_tb.vhd
-- Project Name:  procesor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU
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
 
ENTITY CU_tb IS
END CU_tb;
 
ARCHITECTURE behavior OF CU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU
    PORT(
         iCLK : IN  std_logic;
         iRUN : IN  std_logic;
         inRST : IN  std_logic;
         iINST : IN  std_logic_vector(9 downto 0);
         iPC : IN  std_logic_vector(15 downto 0);
         PC_CLEAR : OUT  std_logic;
         PC_EN : OUT  std_logic;
         REG_SEL : OUT  std_logic_vector(2 downto 0);
         REG_IN : OUT  std_logic_vector(2 downto 0);
         REG_EN : OUT  std_logic;
         ACC_WE : OUT  std_logic;
         RESULT_WE : OUT  std_logic;
         ALU_SEL : OUT  std_logic_vector(0 downto 0);
         G_SEL : OUT  std_logic;
         DATA_SEL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRUN : std_logic := '0';
   signal inRST : std_logic := '1';
   signal iINST : std_logic_vector(9 downto 0) := (others => '0');
   signal iPC : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal PC_CLEAR : std_logic;
   signal PC_EN : std_logic;
   signal REG_SEL : std_logic_vector(2 downto 0);
   signal REG_IN : std_logic_vector(2 downto 0);
   signal REG_EN : std_logic;
   signal ACC_WE : std_logic;
   signal RESULT_WE : std_logic;
   signal ALU_SEL : std_logic_vector(0 downto 0);
   signal G_SEL : std_logic;
   signal DATA_SEL : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU PORT MAP (
          iCLK => iCLK,
          iRUN => iRUN,
          inRST => inRST,
          iINST => iINST,
          iPC => iPC,
          PC_CLEAR => PC_CLEAR,
          PC_EN => PC_EN,
          REG_SEL => REG_SEL,
          REG_IN => REG_IN,
          REG_EN => REG_EN,
          ACC_WE => ACC_WE,
          RESULT_WE => RESULT_WE,
          ALU_SEL => ALU_SEL,
          G_SEL => G_SEL,
          DATA_SEL => DATA_SEL
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
         inRST <= '0';
      wait for iCLK_period*10;

      -- insert stimulus here 
         iINST <= "0000001010";
         iRUN  <= '1'; 
         wait for iCLK_period;
         iRUN  <= '0';			
      wait for iCLK_period*10;	

         iINST <= "0001001010";
         iRUN  <= '1'; 
         wait for iCLK_period;
         iRUN  <= '0';  
      wait for iCLK_period*10;

         iINST <= "0010001010";
         iRUN  <= '1'; 
         wait for iCLK_period;
         iRUN  <= '0';
      wait for iCLK_period*10;

         iINST <= "0011001010";
         iRUN  <= '1'; 
         wait for iCLK_period;
         iRUN  <= '0';   
      wait for iCLK_period*10;
		
		wait;
   end process;

END;
