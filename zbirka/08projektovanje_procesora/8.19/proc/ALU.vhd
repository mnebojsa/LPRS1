----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:40 11/08/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    port( iA   : in  std_logic_vector(3 downto 0);
	       iB   : in  std_logic_vector(3 downto 0);
          iSEL : in  std_logic_vector(2 downto 0);
          oH   : out std_logic_vector(3 downto 0);
          oC   : out std_logic );
end ALU;

architecture Behavioral of ALU is 
    signal sA : unsigned(4 downto 0);
	 signal sB : unsigned(4 downto 0);
	 signal sF : unsigned(4 downto 0);
begin	

    sA <= unsigned('0' & iA); -- operand A prosiren za jedan bit
    sB <= unsigned('0' & iB); -- operand B prosiren za jedan bit

    process(iSEL, sA, sB)
 	 begin
        case iSEL is
            when "000" => sF <= sA;
            when "001" => sF <= sA - 1;
            when "010" => sF <= sA + 1;
            when "011" => sF <= sA - sB;
            when "100" => sF <= sA + sB;
            when "101" => sF <= sA - sB - 1;
            when "110" => sF <= sA + sB + 1;
            when others => sF <= "00000";
        end case;
     end process;

    oH <= std_logic_vector(sF(3 downto 0));
    oC <= sF(4);
	
end Behavioral;