----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:31 11/12/2018 
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
    port( iCLK : in  std_logic;
          inRESETn : in  std_logic;
          iEN      : in  std_logic;
          iP       : in  std_logic;
          oQ       : out std_logic_vector(1 downto 0);
          oTSE     : out std_logic );
end cnt;

architecture Behavioral of cnt is
    signal sCount : unsigned(1 downto 0);
	 signal soTSE  : std_logic;
begin

    process(iCLK)
	 begin
	     if rising_edge(iCLK) then
		      if inRESETn = '0' then
				    sCount <= "00";
                soTSE  <= '0';					 
				elsif iEN	= '1' and sCount > "00" then
				    sCount <= sCount - "01";
				elsif iP	= '1' then
				    sCount <= "11";					 
				elsif sCount = "00" then
                soTSE <= '1';				
				end if;
		  end if;
	 end process;
	 
	 oQ   <= std_logic_vector(sCount);
	 oTSE <= soTSE;
	 
end Behavioral;

