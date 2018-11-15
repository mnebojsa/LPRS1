----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:56 11/19/2018 
-- Design Name: 
-- Module Name:    reg - Behavioral 
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
    port( iCLK : in  std_logic;
	       iCLR : in  std_logic;
          iCE  : in  std_logic; 
          iD   : in  std_logic_vector(3 downto 0);
          oQ   : out std_logic_vector(3 downto 0) );
end reg;

architecture Behavioral of reg is
    signal sQ : std_logic_vector(3 downto 0);
begin

    process(iCLK)
	 begin
	     if rising_edge(iCLK) then
		      if iCE = '1' then
				    if iCLR = '1' then
				        sQ <= "0000";
				    else
				        sQ <= iD;
					 end if;	  
				else
				    sQ <= "0000";
				end if;
		  end if;
	 end process;

    oQ <= sQ;
	 
end Behavioral;
