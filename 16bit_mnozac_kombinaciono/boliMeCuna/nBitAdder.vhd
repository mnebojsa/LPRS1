----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:24:20 11/29/2018 
-- Design Name: 
-- Module Name:    nBitAdder - Behavioral 
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

entity nBitAdder is
    generic ( cell_num : integer := 6 );
    port    ( iL     : in  std_logic_vector(cell_num-1 downto 0);
	           iCarry : in  std_logic;
              oRes   : out std_logic;
              oCarry : out std_logic	);
end nBitAdder;

architecture RTL of nBitAdder is
    component fullAdder
	     port( iA   : in  std_logic;
		        iB   : in  std_logic;
		        iC   : in  std_logic;          
		        oFnc : out std_logic;
		        oC   : out std_logic );
    end component;
	
	 
	 signal sL    : std_logic_vector(cell_num-1 downto 0);	
	 signal sCarry: std_logic_vector(cell_num downto 0);		 
	 signal sFnc  : std_logic_vector(cell_num downto 0);	 
	
begin
	

	 sL        <= iL;
	 sFnc(0)   <= sL(0);
	 sCarry(0) <= iCarry;
	 
GEN_ADD_Level_3: 
    for I in 1 to cell_num -1 generate
        ADDX : fullAdder
		  port map(iA   => sL(I),
		           iB   => sFnc(I-1),
		           iC   => sCarry(I-1),
		           oFnc => sFnc(I),
		           oC   => sCarry(I) );
        end generate GEN_ADD_Level_3;


    oRes   <= sFnc(cell_num - 1);
    oCarry <= sCarry(cell_num - 1); 
	 
end RTL;