----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:49 11/27/2018 
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
    port( iFnc : in  std_logic_vector(15 downto 0);
	       iSel : in  std_logic;
			 oH   : out std_logic_vector(15 downto 0) );
end shift;

architecture dataFlow of shift is

begin

    with iSel select oH <=
	    iFnc(15 downto 0)       when '0',
	   '0' & iFnc(15 downto 1)  when '1',
		(others => '0')          when others;		  

end dataFlow;
