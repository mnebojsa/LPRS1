----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:19 11/30/2018 
-- Design Name: 
-- Module Name:    mux2x1 - Behavioral 
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

use work.mux_generics.all;

entity mux2x1 is
    generic( bus_width     : integer := 16 );
	 
    port( iX0   : in  std_logic_vector(bus_width-1 downto 0);
	       iX1   : in  std_logic_vector(bus_width-1 downto 0);
			 iSEL  : in  std_logic_vector(1 downto 0);	  
		    oData : out std_logic_vector(bus_width-1 downto 0)  );
end mux2x1;

architecture Behavioral of mux2x1 is
    signal sData     : std_logic_vector(bus_width-1 downto 0);
begin
	 
     with iSEL select sData <=
	      (others => '0')  when "00",
			iX0              when "01",
			iX1              when "10",   
	      (others => '1')  when "11",
			(others => '0')  when others;
	 oData <= sData;
end Behavioral;
