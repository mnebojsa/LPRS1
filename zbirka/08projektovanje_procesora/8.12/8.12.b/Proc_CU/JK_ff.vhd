----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:52 11/13/2018 
-- Design Name: 
-- Module Name:    JK_ff - Behavioral 
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

entity JK_ff is
    port( iCLK  : in  std_logic;
	       iRSTn : in  std_logic;
          J     : in  std_logic;
          K     : in  std_logic;
          Q     : out std_logic;
          Qn    : out std_logic );
end JK_ff;

architecture Behavioral of JK_ff is
    signal sQ : std_logic;
begin

    process(iCLK)
	 begin
	     if rising_edge(iCLK) then
		      if iRSTn = '0' then
				    sQ <= '0';
				else
				    if    J = '1' and K = '0' then
					     sQ <= '1';
					 elsif J = '0' and K = '1' then
                    sQ <= '0';
                elsif J = '1' and K = '1' then
					     sQ <= not(sQ);					 
                end if;					 
				end if;
		  end if;
	 end process;
	 
	 Q  <= sQ;
	 Qn <= not(sQ);
	 
end Behavioral;

