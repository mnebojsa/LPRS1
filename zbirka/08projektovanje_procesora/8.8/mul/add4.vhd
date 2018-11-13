----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:45 11/12/2018 
-- Design Name: 
-- Module Name:    add4 - Behavioral 
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

entity add4 is
    port( iX   : in  std_logic_vector(3 downto 0);
          iY   : in  std_logic_vector(3 downto 0);
          oRes : out std_logic_vector(4 downto 0) );
end add4;

architecture Behavioral of add4 is
begin

    oRes <= std_logic_vector(unsigned('0' & iX) + unsigned('0' & iY));

end Behavioral;

