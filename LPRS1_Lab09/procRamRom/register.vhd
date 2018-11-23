----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:02 11/19/2018 
-- Design Name: 
-- Module Name:    register - Behavioral 
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
    generic( bus_width : integer := 16;
             selSigNum : integer := 1 );
				 
    port( iCLK  : in  std_logic;
          iRST  : in  std_logic;
          iWE	 : in  std_logic;
          iData : in  std_logic_vector(bus_width-1 downto 0);
          oData : out std_logic_vector(bus_width-1 downto 0) );
end reg;

architecture Behavioral of reg is
    signal sData : std_logic_vector(bus_width-1 downto 0);
begin

    process(iCLK)
	 begin
	     if (rising_edge(iCLK)) then
		      if (iRST = '1') then
				    sData <= (others => '0');
				elsif (iWE = '1') then
				    sData <= iData;
				end if;
		  end if;
	 end process;
	 
	 oData <= sData;
end Behavioral;

