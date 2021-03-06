----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:44:18 11/06/2018 
-- Design Name: 
-- Module Name:    dec3x8 - Behavioral 
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

entity dec3x8 is
    Port ( iWe      : in  std_logic;
	        iOe      : in  std_logic;
           iAddress : in  std_logic_vector(1 downto 0);
           oQ       : out std_logic_vector(3 downto 0);
			  oQoe     : out std_logic_vector(3 downto 0) );
end dec3x8;

architecture dafaFlow of dec3x8 is

begin

    with iAddress select oQ <=
	     "000" & iWe         when "00", 
		  "00"  & iWe &   '0' when "01",
		  '0'   & iWe &  "00" when "10",
		          iWe & "000" when "11",					 
		               "ZZZZ" when others;

    with iAddress select oQoe <=
	     "000" & iOe         when "00", 
		  "00"  & iOe &   '0' when "01",
		  '0'   & iOe &  "00" when "10",
		          iOe & "000" when "11",					 
		               "ZZZZ" when others;								
end dafaFlow;

