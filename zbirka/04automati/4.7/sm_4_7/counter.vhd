----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:44 11/01/2018 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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

entity counter is
    Port ( iEn      : in   std_logic;
           iCLK     : in   std_logic;
           iRSTn    : in   std_logic;
			  oCnt     : out  std_logic_vector(1 downto 0)
			  );
end counter;

architecture Behavioral of counter is

begin

    process(iCLK)
	     variable vCount : unsigned(1 downto 0) := "00";
	 begin
	     if rising_edge(iCLK) then
				if iRSTn = '0' then
					oCnt <= "00";
					vCount :="00";
				else	
					if '0' = iEn then
						 vCount := vCount + 1;	
               else
                   oCnt <= "00";	
                   vCount := "00";						 
					end if;
				end if;
				oCnt <= std_logic_vector(vCount);
		  end if;
	 end process;
end Behavioral;

