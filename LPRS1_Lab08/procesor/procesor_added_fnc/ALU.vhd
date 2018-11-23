----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:27 11/19/2018 
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
    generic( bus_width : integer := 16;
             selSigNum : integer := 1 );
				 
    port( iX      : in  std_logic_vector(bus_width-1 downto 0);
	       iY      : in  std_logic_vector(bus_width-1 downto 0);
			 iSel    : in  std_logic_vector(selSigNum-1 downto 0);
			 oCarry  : out std_logic;
			 oResult : out std_logic_vector(bus_width-1 downto 0) );
end ALU;

architecture Behavioral of ALU is
    signal sX       : unsigned(bus_width-1 downto 0);
    signal sY       : unsigned(bus_width-1 downto 0);	
    signal soResult : unsigned(bus_width downto 0);	 
begin

	 sX <= unsigned(iX);
	 sY <= unsigned(iY);			

	 process(sX, sY, iSel)
	 begin
	     if iSel = "0" then
		      soResult <= ('0' & sX) + ('0' & sY);
		  else
		      soResult <= ('0' & sX) - ('0' & sY);			
        end if;			
	 end process;
	 
	 oResult  <= std_logic_vector(soResult(bus_width-1 downto 0));
	 oCarry   <= soResult(bus_width);
	     
end Behavioral;

