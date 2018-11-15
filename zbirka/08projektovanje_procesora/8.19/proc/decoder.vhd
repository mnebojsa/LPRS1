----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:56:30 11/19/2018 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
    port( iX  : in  std_logic_vector(1 downto 0);
          iEN : in  std_logic;
          oY  : out std_logic_vector(3 downto 0));
end decoder;

architecture Behavioral of decoder is
    signal soY : std_logic_vector(3 downto 0);
begin

    process(iEN, iX)
	 begin
	     if (iEn = '1') then
            case iX is
				    when "00"   => soY <= "0001";
				    when "01"   => soY <= "0010"; 
				    when "10"   => soY <= "0100"; 
				    when "11"   => soY <= "1000"; 
				    when others => soY <= "0000"; 
            end case;					 
		  else
		      soY <= "0000";		  
		  end if;
	 end process;
    
	 oY <= soY;

end Behavioral;



