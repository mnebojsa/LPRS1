----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:13 11/16/2018 
-- Design Name: 
-- Module Name:    cnt - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt is
    port( iCLK   : in  std_logic;
          iRESET : in  std_logic;
          iINC   : in  std_logic;
          iDEC   : in  std_logic;
          oQ     : out std_logic_vector(1 downto 0) );
end cnt;

architecture Behavioral of cnt is
    signal sQ : unsigned(1 downto 0);
begin

    process(iCLK)
	 
	 begin
	     if rising_edge(iCLK) then
		      if iRESET = '1' then
				    sQ <= "00";
				elsif iINC = '1' and iDEC = '0' and sQ < "11" then
				    sQ <= sQ + 1;
            elsif iINC = '0' and iDEC = '1' and sQ > "00" then
				    sQ <= sQ - 1;				
            end if;				
		  end if;
	 end process;

    oQ <= std_logic_vector(sQ);

end Behavioral;

