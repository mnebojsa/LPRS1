----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:18:37 11/16/2018 
-- Design Name: 
-- Module Name:    mux4x1 - Behavioral 
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

entity mux4x1 is
    port( iX   : in  std_logic_vector(15 downto 0);
          iSel : in  std_logic_vector(1 downto 0);
          oFnc : out std_logic_vector(3 downto 0) );
end mux4x1;

architecture dataFlow of mux4x1 is

begin

    with iSel select oFnc <=
	     iX( 3 downto  0) when "00",
	     iX( 7 downto  4) when "01",
	     iX(11 downto  8) when "10",
	     iX(15 downto 12) when "11",
	     "0000"         when others;		  
        	 
end dataFlow;

