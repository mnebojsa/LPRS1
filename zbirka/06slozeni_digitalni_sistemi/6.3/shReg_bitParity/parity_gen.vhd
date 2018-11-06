----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:13 11/06/2018 
-- Design Name: 
-- Module Name:    parity_gen - Behavioral 
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

entity parity_gen is
    Port ( iD : in  std_logic_vector(3 downto 0);
           oP : out std_logic );
end parity_gen;

architecture Behavioral of parity_gen is

begin

    oP <= iD(3) xor iD(2) xor iD(1) xor iD(0);

end Behavioral;

