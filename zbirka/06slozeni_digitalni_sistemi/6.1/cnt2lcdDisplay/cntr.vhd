----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:04:39 11/06/2018 
-- Design Name: 
-- Module Name:    cntr - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cntr is
    Port ( iCLK      : in   std_logic;
           inReset_n : in   std_logic;
           iEn_n     : in   std_logic;
           SSeg      : out  std_logic_vector(3 downto 0) );
end cntr;

architecture Behavioral of cntr is
    signal sSSeg : unsigned(3 downto 0) := "0000";
begin
    process(iCLK)
	 begin
	     if(rising_edge(iCLK)) then
		      if (inReset_n = '0') then
				    sSSeg <= "0000";
				elsif (iEn_n = '0') then
				    sSSeg <= sSSeg + "0001";
				else
				    sSSeg <= sSSeg;
				end if;
		  end if;
	 end process;

    SSeg <= std_logic_vector(sSSeg);

end Behavioral;

