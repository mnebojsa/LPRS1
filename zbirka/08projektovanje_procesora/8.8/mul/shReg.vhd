----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:41:00 11/12/2018 
-- Design Name: 
-- Module Name:    shReg - Behavioral 
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

entity shReg is
    port( iCLK   : in  std_logic;
          inCLRn : in  std_logic;
          iLOAD  : in  std_logic;
          iSE    : in  std_logic;
          iD     : in  std_logic_vector(3 downto 0);
			 iDSR   : in std_logic;
          oQ     : out std_logic_vector(3 downto 0) );
end shReg;

architecture Behavioral of shReg is
    signal siD   : std_logic_vector(3 downto 0);
    signal siDSR : std_logic;	 
begin

    process(iCLK)
	     variable vData : std_logic_vector(2 downto 0);
	 begin
	     if rising_edge(iCLK) then
		      if inCLRn = '0' then
                siD <= "0000";
            elsif iSE = '1' then
				    siDSR <= iDSR;
                vData := siD(2 downto 0);	
                siD <= siDSR & vData;					 
				elsif iLOAD = '1' then
                siD <= iD;				 
            end if;				
	     end if;
	 end process;

    oQ   <= siD;
end Behavioral;

