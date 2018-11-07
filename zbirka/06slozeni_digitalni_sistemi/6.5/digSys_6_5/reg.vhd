----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:12:38 11/06/2018 
-- Design Name: 
-- Module Name:    reg - Behavioral 
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

entity reg is
    Port ( iCLK    : in  std_logic;
           iWe     : in  std_logic;
           iRSTn   : in  std_logic;
           iD      : in  std_logic_vector (3 downto 0);
           oRegVal : out std_logic_vector (3 downto 0) );
end reg;

architecture Behavioral of reg is
    signal sRegVal : std_logic_vector (3 downto 0);
begin

    process(iCLK)
	 begin
	     if (rising_edge(iCLK)) then
		      if (iRSTn = '0') then
				    sRegVal <= "0000";
				elsif (iWe = '1') then
				    sRegVal <= iD;
				end if;
		  end if;
	 end process;

    oRegVal <= sRegVal;

end Behavioral;

