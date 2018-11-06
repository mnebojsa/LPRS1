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
--  iCLK ---------|                          |                |                   |          |
--        |       |                          |                |    BCD to         |          |
--inReset---------|         COUNTER          |                |    7SEG           |          |
--        |       |                          |---sCnt(3:0)----|                   |----------------- oQ(6:0)
--        |       |                          |                |                   |          |
--  iEn ----------|                          |                |                   |          |
--        |       |                          |                |                   |          |
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

entity cnt2heming is
    port( iCLK    : in  std_logic;
	       inReset : in  std_logic;
			 iEn     : in  std_logic;
          oQ      : out std_logic_vector(6 downto 0)			 
			);
end cnt2heming;

architecture Behavioral of cnt2heming is

    component cntr
        port( iCLK      : in  std_logic;
		        inReset_n : in  std_logic;
		        iEn       : in  std_logic;          
		        oSCnt     : out std_logic_vector(3 downto 0) );
    end component;
	 
    component heming_coder
        port( iCNT  : in  std_logic_vector(3 downto 0);
		        oQ    : out std_logic_vector(6 downto 0) );
    end component;	 

    signal sCnt : std_logic_vector(3 downto 0);	 
begin

Inst_cntr:
    cntr
    port map( iCLK      => iCLK,
		        inReset_n => inReset,
		        iEn       => iEn,
		        oSCnt     => sCnt );
		
Inst_heming_coder:
    heming_coder
    port map( iCNT      => sCnt,
		        oQ        => oQ );
		
end Behavioral;
