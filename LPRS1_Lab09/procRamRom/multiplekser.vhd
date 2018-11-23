----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:25 11/19/2018 
-- Design Name: 
-- Module Name:    multiplekser - Behavioral 
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
use work.mux_generics.all;

entity multiplekser is
    generic( bus_width     : integer := 16;
             num_of_inputs : integer :=11 );
	 
    port( iX        : in  WORD_ARRAY_type;
	       iDATA_SEL : in  std_logic;
			 iG_SEL    : in  std_logic_vector(1 downto 0);
			 iREG_SEL  : in  std_logic_vector(2 downto 0);	  
		    oData     : out std_logic_vector(bus_width-1 downto 0)  );
end multiplekser;

architecture Behavioral of multiplekser is
	 signal sSEL      : integer range 0 to num_of_inputs; 
begin

    sSEL <= to_integer(unsigned(iREG_SEL));
	 
    oData <= iX(num_of_inputs-1) when iG_SEL(1) = '1'	else
	          iX(num_of_inputs-2) when iG_SEL(0) = '1'	else
				 iX(0)               when iDATA_SEL = '1' else
             iX(sSEL + 1)			when sSEL < num_of_inputs-3 else
             (others => '0');				 
end Behavioral;

