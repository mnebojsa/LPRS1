----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:29:11 11/06/2018 
-- Design Name: 
-- Module Name:    reg4b - Behavioral 
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

entity reg4b is
    port( iCLK        : in  std_logic;
          iRSTn       : in  std_logic;
			 iWR_SHn     : in  std_logic;
          iData       : in  std_logic_vector(3 downto 0);
          oSerialData : out std_logic );
end reg4b;

architecture Behavioral of reg4b is
    signal sData : std_logic_vector(3 downto 0);
begin

    process(iCLK)
	 begin
	     if(rising_edge(iCLK)) then
		      if (iRSTn = '0') then
				    sData <= "0000";
				else
				    if iWR_SHn = '1'then
					     sData <= iData;
					 else
				        sData <= '0' & sData(3 downto 1);
					 end if;
				end if;
		  end if;
	 end process;

    oSerialData <= sData(0);

end Behavioral;

