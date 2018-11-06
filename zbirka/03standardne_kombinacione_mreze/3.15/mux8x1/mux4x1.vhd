----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:59:14 10/31/2018 
-- Design Name: 
-- Module Name:    mux4x1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4x1 is
    Port ( iD   : in   std_logic_vector(15 downto 0);
           iSel : in   std_logic_vector(1 downto 0);
           oY   : out  std_logic_vector(3 downto 0));
end mux4x1;

architecture Behavioral of mux4x1 is

begin

    with iSel select oY <=
	     iD( 3 downto  0) when "00",
		  iD( 7 downto  4) when "01",
		  iD(11 downto  8) when "10",
		  iD(15 downto 12) when "11",
		           "ZZZZ"  when others;
		  
end Behavioral;
