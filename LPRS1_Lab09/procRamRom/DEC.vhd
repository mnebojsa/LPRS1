----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:45 11/20/2018 
-- Design Name: 
-- Module Name:    DEC - Behavioral 
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

entity DEC is
    port( iDATA : in  std_logic_vector(2 downto 0);
          iEN   : in  std_logic;
          oDec  :	out std_logic_vector(7 downto 0) );
end DEC;

architecture Behavioral of DEC is
    signal soDec : std_logic_vector(7 downto 0);
begin

    process(iEN, iDATA)
	     variable vIndex : integer range 0 to 7 := 0;
	 begin
	     vIndex := to_integer(unsigned(iDATA));
	     if iEN = '1' then
		      soDec <= "00000000";
            soDec(vIndex) <= '1';		  
		  else
		      soDec <= "00000000";
		  end if;
	 end process;
	 
	 oDec <= soDec;
	 
end Behavioral;

