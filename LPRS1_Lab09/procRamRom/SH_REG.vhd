----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:28 11/30/2018 
-- Design Name: 
-- Module Name:    SH_REG - Behavioral 
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

entity SH_REG is
    generic( bus_width : integer := 16 );
    port ( iCLK      : in  std_logic;
	        iRST      : in  std_logic;
	        iData     : in  std_logic_vector(bus_width-1 downto 0);
			  iSerIn    : in  std_logic;
			  iWR_EN    : in  std_logic;
			  iSH_EN    : in  std_logic;
			  oSerOut   : out std_logic;
			  oPrlOut   : out std_logic_vector(bus_width-1 downto 0) );
end SH_REG;

architecture Behavioral of SH_REG is
    signal sData   : std_logic_vector(bus_width-1 downto 0);
begin

    process(iCLK)
	 begin
	     if rising_edge(iCLK) then
		     if iRST = '1' then
			      sData <= (others => '0');
			  else
			      if iWR_EN = '1' then
					    sData <= iData;
					elsif iSH_EN = '1' then
                   sData   <= iSerIn & sData(bus_width-1 downto 1);
               else
                   sData <= sData;
               end if;						 
			  end if;
		  end if;
	 end process;
	 
	 oPrlOut <= sData;
	 oSerOut <= sData(0);
	 
end Behavioral;

