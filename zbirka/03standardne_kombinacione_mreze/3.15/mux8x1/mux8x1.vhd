----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:53 10/30/2018 
-- Design Name: 
-- Module Name:    mux8x1 - Behavioral 
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

entity mux8x1 is
    Port ( iD   : in   std_logic_vector (7 downto 0);
           iSel : in   std_logic_vector (2 downto 0);
           oY   : out  std_logic );
end mux8x1;

architecture Behavioral of mux8x1 is
    component mux4x1
	     port ( iD   : in  std_logic_vector (3 downto 0);
		         iSel : in  std_logic_vector (1 downto 0);
               oY   : out std_logic );
    end component;	

    component mux2x1
	     port ( iD   : in  std_logic_vector (1 downto 0);
		         iSel : in  std_logic;
               oY   : out std_logic );
    end component;

    signal sY1 : std_logic;
	 signal sY2 : std_logic;
	 signal sDi : std_logic_vector(1 downto 0);
begin
  
  sDi <= sY1 & sY2;
  
  G1: mux4x1 
      port map (iD   => iD  (3 downto 0), 
	             iSel => iSel(1 downto 0), 
					 oY   => sY1 
					 );
  G2: mux4x1 
      port map (iD   => iD  (7 downto 4),
		          iSel => iSel(1 downto 0),
					 oY   => sY2
					 );  
  G3: mux2x1
      port map (iD   => sDi,
		          iSel => iSel(2),
					 oY   => oY
					 ); 
end Behavioral;
