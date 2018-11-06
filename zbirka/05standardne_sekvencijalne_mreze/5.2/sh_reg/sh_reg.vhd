----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:30 11/06/2018 
-- Design Name: 
-- Module Name:    sh_reg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--  ___________________________________________________________________
--  |    S1    |      S0      |     function                          |
--  |__________|______________|_______________________________________|
--  |     0    |      0       |   paralel WR data                     |
--  |__________|______________|_______________________________________|
--  |     0    |      1       |   SH right                            |
--  |__________|______________|_______________________________________|
--  |     1    |      0       |   SH left                             |
--  |__________|______________|_______________________________________|
--  |     1    |      1       |   do nothing                          |
--  |__________|______________|_______________________________________|
--
--  When SH right operation is actice, then take inputs from iDSR   
--  When SH left operation is actice, then take inputs from iDSL 
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

entity sh_reg is
    port( iCLK  : in  std_logic;
	       iCLRn : in  std_logic;
			 iSEL  : in  std_logic_vector(1 downto 0);
			 iDSR  : in  std_logic;
			 iDSL  : in  std_logic;
			 iData : in  std_logic_vector(3 downto 0);
			 oQ    : out std_logic_vector(3 downto 0) );
end sh_reg;

architecture Behavioral of sh_reg is
    signal sData : std_logic_vector(3 downto 0);
begin

   process(iCLK)
	begin
	    if(rising_edge(iCLK)) then
		     if(iCLRn = '0') then
			      sData <= "0000";    
			  else
			      case iSEL is 
					    when "00" =>
						     sData <= iData;    
					    when "01" =>
						     sData <= iDSR & sData(3 downto 1);
					    when "10" =>
						     sData <= sData(2 downto 0) & iDSL;
					    when "11" =>
						     sData <= sData;
						 when others => sData <= "0000";	  
               end case;						 
			  end if;
		 end if;
	end process;

   oQ <= sData;
	
end Behavioral;

