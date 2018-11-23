----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:35 11/29/2018 
-- Design Name: 
-- Module Name:    mul_cell - Behavioral 
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

entity mul_cell is
    generic ( cell_num : integer := 3 );
    port    ( iL     : in  std_logic_vector(cell_num-1 downto 0);
	           iCarry : in  std_logic;
              oRes   : out std_logic;
              oCarry : out std_logic	);
end mul_cell;

architecture Behavioral of mul_cell is
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
	

	 
--GEN_ADD_Level_3: 
--    for I in 0 to cell_num -1 generate
--        ADDX : fullAdder
--		  port map(iA   => sL(I),
--		           iB   => sFnc(I),
--		           iC   => sCarry(I),
--		           oFnc => sFnc(I+1),
--		           oC   => sCarry(I+1) );
--        end generate GEN_ADD_Level_3;

	 sL        <= iL;
	 sFnc(0)   <= '0';
	 sCarry(0) <= iCarry;
	 
ADDX0 : fullAdder
    port map(iA   => sL(0),
		       iB   => sFnc(0),
		       iC   => sCarry(0),
		       oFnc => sFnc(1),
		       oC   => sCarry(1) );
					  
ADDX1 : fullAdder
    port map(iA   => sL(1),
		       iB   => sFnc(1),
		       iC   => sCarry(1),
		       oFnc => sFnc(2),
		       oC   => sCarry(2) );
				 
ADDX2 : fullAdder
    port map(iA   => sL(2),
		       iB   => sFnc(2),
		       iC   => sCarry(2),
		       oFnc => sFnc(3),
		       oC   => sCarry(3) );

    oRes   <= sFnc(3);
    oCarry <= sCarry(3);
	 
end Behavioral;

