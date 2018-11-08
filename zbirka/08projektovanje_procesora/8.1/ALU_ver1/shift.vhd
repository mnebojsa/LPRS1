----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:51 11/08/2018 
-- Design Name: 
-- Module Name:    shift - Behavioral 
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

entity shift is
    port( iFnc : in  std_logic_vector(3 downto 0);
	       iSel : in  std_logic_vector(1 downto 0);
			 oH   : out std_logic_vector(3 downto 0) );
end shift;

architecture dataFlow of shift is

begin

    with iSel select oH <=
	                   "0000"  when "00",
      iFnc(2 downto 0) & '0'  when "01",
	    '0' & iFnc(3 downto 1) when "10",
		       iFnc(3 downto 0) when "11";		  

end dataFlow;

