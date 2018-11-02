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
    Port ( iD   : in   std_logic_vector(3 downto 0);
           iSel : in   std_logic_vector(1 downto 0);
           oY   : out  std_logic);
end mux4x1;

architecture Behavioral of mux4x1 is

begin

    with iSel select oY <=
	     iD(0) when "00",
		  iD(1) when "01",
		  iD(2) when "10",
		  iD(3) when "11",
		   'Z'  when others;
		  
end Behavioral;
