----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:03 11/06/2018 
-- Design Name: 
-- Module Name:    cnt2lcd - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--         ___________________________________________________________________________________
--        |                                                                                  |
--        |                                                                                  |
--        |        ___________________________                 ____________________          |
--        |       |                          |                |                   |          |
--  iCLK ---------|                          |                |                   |----------------- a
--        |       |                          |                |    BCD to         |----------------- b
--inReset---------|         COUNTER          |                |    7SEG           |----------------- c
--        |       |                          |---sCnt(3:0)----|                   |----------------- d
--        |       |                          |                |                   |----------------- e
--  iEn ----------|                          |                |                   |----------------- f
--        |       |                          |                |                   |----------------- g
--        |       |__________________________|                |___________________|          |
--        |                                                                                  |
--        |                                                                                  |
--        |__________________________________________________________________________________|

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

entity cnt2lcd is
    port( iCLK    : in  std_logic;
	       inReset : in  std_logic;
			 iEn     : in  std_logic;
          oSSeg   : out std_logic_vector(6 downto 0)			 
			);
end cnt2lcd;

architecture Behavioral of cnt2lcd is

    component cntr
        port( iCLK      : in  std_logic;
		        inReset_n : in  std_logic;
		        iEn_n     : in  std_logic;          
		        SSeg      : out std_logic_vector(3 downto 0) );
    end component;
	 
    component SSegDisplay
        port( iCNT  : in  std_logic_vector(3 downto 0);
		        oSSeg : out std_logic_vector(6 downto 0) );
    end component;	 

    signal sSSeg : std_logic_vector(3 downto 0);	 
begin

Inst_cntr:
    cntr
    port map( iCLK      => iCLK,
		        inReset_n => inReset,
		        iEn_n     => iEn,
		        SSeg      => sSSeg );
		
Inst_SSegDisplay:
    SSegDisplay
    port map( iCNT      => sSSeg,
		        oSSeg     => oSSeg );
		
end Behavioral;

