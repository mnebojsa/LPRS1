----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:16 10/30/2018 
-- Design Name: 
-- Module Name:    dec2x4 - DF 
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
    Port ( iB : in   std_logic;
           iA : in   std_logic;
           iE : in   std_logic;
           oD : out  std_logic_vector(3 downto 0)
			  );
end dec2x4;

architecture DF of dec2x4 is

begin

    oD(0) <= iE and not(iB) and not(iA);
	 oD(1) <= iE and not(iB) and     iA ;
	 oD(2) <= iE and     iB  and not(iA);
	 oD(3) <= iE and     iB  and     iA;

end DF;

