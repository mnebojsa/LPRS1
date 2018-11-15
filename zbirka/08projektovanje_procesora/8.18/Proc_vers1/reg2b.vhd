----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:53:39 11/16/2018 
-- Design Name: 
-- Module Name:    reg2b - Behavioral 
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

entity reg2b is
    port( iCLK        : in  std_logic;
          iRSTn       : in  std_logic;
			 iWR         : in  std_logic;
          iZero       : in  std_logic;
			 iCarry      : in  std_logic;
          oData       : out std_logic_vector(1 downto 0) );
end reg2b;

architecture Behavioral of reg2b is
    signal sData : std_logic_vector(1 downto 0);
begin

    process(iCLK)
	 begin
	     if(rising_edge(iCLK)) then
		      if (iRSTn = '0') then
				    sData <= "00";
				elsif iWR = '1' then
					     sData(0) <= iCarry;
						  sData(1) <= iZero;
				end if;
		  end if;
	 end process;

    oData <= sData;

end Behavioral;

