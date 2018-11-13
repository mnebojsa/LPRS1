----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:02 11/12/2018 
-- Design Name: 
-- Module Name:    ACC - Behavioral 
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

entity ACC is
    port( inRESETn : in  std_logic;
	       iLOAD    : in  std_logic;
	       iData    : in  std_logic_vector(7 downto 0);
          oData    : out std_logic_vector(7 downto 0) );
end ACC;

architecture Behavioral of ACC is
    signal sACC : std_logic_vector(7 downto 0);
begin

    process(iLOAD, iData, inRESETn)
    begin
	     if inRESETn = '0' then
		      sACC <= "00000000";
		  else
		      if iLOAD = '1' then
				    sACC <= iData;
				end if;
		  end if;
	 end process;
	 
	 oData <= sACC;
	 
end Behavioral;

