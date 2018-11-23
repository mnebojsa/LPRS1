----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:54 12/04/2018 
-- Design Name: 
-- Module Name:    CNT - Behavioral 
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
    generic( bus_width : integer := 16 );
		  
    port( iCLK    : in  std_logic;
          iRST    : in  std_logic;
          iPC_CLR : in  std_logic;
          iPC_En  : in  std_logic;
          oCnt    : out std_logic_vector(bus_width-1 downto 0) );
end cnt;

architecture Behavioral of cnt is
    signal sCnt : unsigned(bus_width-1 downto 0);
begin

    process(iCLK)
	     variable vCntEn : std_logic := '0';
	 begin
	     if (rising_edge(iCLK)) then
		      if (iRST = '1' or iPC_CLR = '1') then
				    sCnt <= (others => '0');
					 vCntEn := '1';
				elsif (iPC_En  = '1' and vCntEn = '1') then
                sCnt <= sCnt + 1;
                vCntEn := '0';					 
				end if;
				
				if (iPC_En = '0') then
				    vCntEn := '1';
				end if;
		  end if;
	 end process;
	 
	 oCnt <= std_logic_vector(sCnt);
	 
end Behavioral;

