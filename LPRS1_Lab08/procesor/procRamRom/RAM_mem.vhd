----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:27 11/22/2018 
-- Design Name: 
-- Module Name:    RAM_mem - Behavioral 
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

entity RAM_mem is
    port ( iCLK   : in    std_logic;
           iRST   : in    std_logic;
           iADDR  : in    std_logic_vector(2 downto 0);
           iDATA  : in    std_logic_vector(15 downto 0);
			  oDATA  : out   std_logic_vector(15 downto 0);
           iWR    : in    std_logic;
           iRD    : in    std_logic );
end RAM_mem;

architecture Behavioral of RAM_mem is
    type t_Memory is array (0 to 7) of std_logic_vector(15 downto 0);
    signal ram_Mem : t_Memory;
	 
	 constant sDATA : t_Memory :=("0101010101010101",
	                              "0000000000000001",
											"0000000000000011",
											"0000000000000111",
											"0000000000001111",
											"0000000000011111",
											"0000000000111111",
											"1111111110000000" );
begin

    process(iCLK)
	 begin
	     if rising_edge(iCLK) then
		      if iRST = '1' then
				    ram_Mem <= (others => (others => '0'));
				else
				    if iRD = '1' then
					     oDATA <= sDATA(to_integer(unsigned(iADDR)));
					 elsif iWR = '1' then
					     ram_Mem(to_integer(unsigned(iADDR))) <= iDATA;
					 end if;
				end if;
		  end if;
	 end process;

end Behavioral;

