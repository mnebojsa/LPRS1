----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:38:42 11/06/2018 
-- Design Name: 
-- Module Name:    buff - Behavioral 
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

entity buff is
    Port ( iD   : in  std_logic_vector(3 downto 0);
           iOEn : in  std_logic;
           oY   : out std_logic_vector(3 downto 0) );
end buff;

architecture Behavioral of buff is

begin

    with iOEn select oY <=
	     iD     when '1',
		  "ZZZZ" when others;
		  
end Behavioral;

