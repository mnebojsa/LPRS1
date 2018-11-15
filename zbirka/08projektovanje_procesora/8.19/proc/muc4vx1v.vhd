----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:44:12 11/19/2018 
-- Design Name: 
-- Module Name:    muc4vx1v - Behavioral 
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

entity muc4vx1v is
    port( iX0  : in  std_logic_vector(3 downto 0); 
	       iX1  : in  std_logic_vector(3 downto 0);
          iX2  : in  std_logic_vector(3 downto 0); 
			 iX3  : in  std_logic_vector(3 downto 0);
          iSEL : in  std_logic_vector(1 downto 0);
          oY   : out std_logic_vector(3 downto 0) );
end muc4vx1v;

architecture Behavioral of muc4vx1v is

begin

    with iSEL select oY <=
	     iX0     when "00",
	     iX1     when "01",
	     iX2     when "10",
	     iX3     when "11",
        "0000" when others;		  
		  
end Behavioral;

