----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:14 11/06/2018 
-- Design Name: 
-- Module Name:    heming_coder - Behavioral 
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

entity heming_coder is
    Port ( iCNT : in   std_logic_vector(3 downto 0);
           oQ   : out  std_logic_vector(6 downto 0));
end heming_coder;

architecture Behavioral of heming_coder is
    signal controlBits : std_logic_vector(2 downto 0);
begin
    
	 oQ(0) <= iCNT(0) xor iCNT(1) xor iCNT(3);
	 oQ(1) <= iCNT(0) xor iCNT(2) xor iCNT(3);
	 oQ(2) <= iCNT(0);
	 oQ(3) <= iCNT(1) xor iCNT(2) xor iCNT(3);
	 oQ(4) <= iCNT(1);
	 oQ(5) <= iCNT(2);
	 oQ(6) <= iCNT(3); 	 

end Behavioral;

