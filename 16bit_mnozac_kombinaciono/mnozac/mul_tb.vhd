--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:47:47 11/29/2018
-- Design Name:   
-- Module Name:   D:/LPRS1_git/LPRS1/16bit_mnozac_kombinaciono/mnozac/mul_tb.vhd
-- Project Name:  mnozac
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUL
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
 
ENTITY mul_tb IS
END mul_tb;
 
ARCHITECTURE behavior OF mul_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUL
    PORT(
         iX : IN  std_logic_vector(15 downto 0);
         iY : IN  std_logic_vector(15 downto 0);
         oResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iX : std_logic_vector(15 downto 0) := (others => '0');
   signal iY : std_logic_vector(15 downto 0) := (others => '0');
	signal sX,sY : unsigned(15 downto 0);
 	--Outputs
   signal oResult : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUL PORT MAP (
          iX => iX,
          iY => iY,
          oResult => oResult
        );

--process
--
--begin
--    for i in 0 to 100 loop
--        for j in 0 to 100 loop
--		     sY <= to_unsigned(i,16);
--		     sX <= to_unsigned(j,16);
--			  assert (to_integer(unsigned(oResult)) = to_integer(sX)*to_integer(sY)) 
--			  report   "Wrong multipy result ....  !!!" 
--			  severity error;
--			wait for 90 ns;
--        end loop;
--    end loop;		  
--end process;

   -- Stimulus process
--stim_proc: process(sX,sY)
stim_proc: process
begin		
-- hold reset state for 100 ns.
   wait for 100 ns;	
 -- insert stimulus here 
--    iX <= std_logic_vector(sX);
--    iY <= std_logic_vector(sY);
    iX <= "0000000000000011";
    iY <= "0000000000000011";

      wait;

end process;

END;
