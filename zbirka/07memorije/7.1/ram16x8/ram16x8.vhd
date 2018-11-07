----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:23 11/07/2018 
-- Design Name: 
-- Module Name:    ram16x8 - Behavioral 
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

entity ram16x8 is
    port( iRD      : in  std_logic;
	       iWR      : in  std_logic;
			 iDATA    : in  std_logic_vector(7 downto 0);
			 iADDRESS : in  std_logic_vector(3 downto 0);
			 oDATA    : out std_logic_vector(7 downto 0) );
end ram16x8;

architecture Behavioral of ram16x8 is
    type RAM16t8  is array (15 downto 0) of std_logic_vector(7 downto 0);
    signal s_ram16x8 : RAM16t8 := (others => (others => '0'));

begin

write_to_ram_process:
    process(iWR, iADDRESS, iDATA)
	 begin
	     if (iWR = '1') then
		      s_ram16x8(to_integer(unsigned(iADDRESS))) <= iDATA;
		  end if;
	 end process;

read_from_ram_process:
    process(iRD, iADDRESS, iDATA, s_ram16x8)
    begin
	     if (iRD = '1') then
		      oDATA <= s_ram16x8(to_integer(unsigned(iADDRESS)));
		  else
		      oDATA <= "ZZZZZZZZ";
		  end if;
	 end process;
	 
end Behavioral;

