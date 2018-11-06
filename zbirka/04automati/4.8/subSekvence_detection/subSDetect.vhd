----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:49:07 11/06/2018 
-- Design Name: 
-- Module Name:    subSDetect - Behavioral 
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

entity subSDetect is
    port(
	      CLK    : in  std_logic;    
			RSTn   : in  std_logic;
			iVal   : in  std_logic;
			oVec   : out std_logic_vector(3 downto 0);
         oDetect: out std_logic			
		  );

end subSDetect;

architecture Behavioral of subSDetect is
    signal sVec    : std_logic_vector(3 downto 0);
	 signal sDetect : std_logic;
begin

    process(CLK)
	 begin
	     if (rising_edge(CLK)) then
		      if RSTn = '0' then
				    sVec    <= "0000";
					 sDetect <= '0';
				else
				    sVec    <= iVal & sVec(3 downto 1);
					 sDetect <= sVec(3) and not(sVec(2)) and sVec(1) and sVec(0);
				end if;
		  end if;
	 end process;
	 
	 oVec <= sVec;
	 oDetect <= sDetect;
	 
end Behavioral;

