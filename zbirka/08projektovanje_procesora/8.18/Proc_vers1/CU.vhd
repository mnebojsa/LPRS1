----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:07 11/16/2018 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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

entity CU is
    port( iStart : in  std_logic;
          iQ     : in  std_logic;
          iZ     : in  std_logic;
          iC     : in  std_logic;
          oS     : out std_logic_vector(8 downto 0) );
end CU;

architecture Behavioral of CU is

begin


end Behavioral;

