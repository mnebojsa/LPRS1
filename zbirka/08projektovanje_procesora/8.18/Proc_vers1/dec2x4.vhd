----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:57 11/16/2018 
-- Design Name: 
-- Module Name:    dec2x4 - Behavioral 
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

entity dec2x4 is
    Port ( iX : in   std_logic_vector(1 downto 0);
           iE : in   std_logic;
           oD : out  std_logic_vector(3 downto 0)
			  );
end dec2x4;

architecture DF of dec2x4 is

begin

    oD(0) <= iE and not(iX(1)) and not(iX(0));
	 oD(1) <= iE and not(iX(1)) and     iX(0) ;
	 oD(2) <= iE and     iX(1)  and not(iX(0));
	 oD(3) <= iE and     iX(1)  and     iX(0);

end DF;

