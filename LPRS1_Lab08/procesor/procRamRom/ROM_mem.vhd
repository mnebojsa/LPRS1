----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:19 11/22/2018 
-- Design Name: 
-- Module Name:    ROM_mem - Behavioral 
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

entity ROM_mem is
    port(  oDATA : out  std_logic_vector(9 downto 0);
           iADDR : in   std_logic_vector(15 downto 0)	);
end ROM_mem;

architecture Behavioral of ROM_mem is
    type t_Memory is array (0 to 7) of unsigned(9 downto 0);
    signal rom_Mem : t_Memory;

	 	 constant COMMANDa : t_Memory := ( "0001000000",
	                                      "0001001001",
											        "0000010000",
											        "0000011010",
											        "0010000001",
											        "0011000001",
                                         "0010011010",
                                         "0011011010" );	
begin
	
    oDATA <= std_logic_vector(COMMANDa(to_integer(unsigned(iADDR(2 downto 0)))));
         
end Behavioral;

