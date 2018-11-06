----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:40 11/06/2018 
-- Design Name: 
-- Module Name:    shReg_bitParity - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
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

entity shReg_bitParity is
    Port ( iD      : in  std_logic_vector(3 downto 0);
           iSe     : in  std_logic;
           iLoad   : in  std_logic;
           inReset : in  std_logic;
           iCLK    : in  std_logic;
           oQ      : out std_logic );
end shReg_bitParity;

architecture Behavioral of shReg_bitParity is

    component sh_reg
        port( iD      : in  std_logic_vector(3 downto 0);
		        iSe     : in  std_logic;
		        iLoad   : in  std_logic;
		        inReset : in  std_logic;
		        iCLK    : in  std_logic;
		        iParity : in  std_logic;          
		        oQ      : out std_logic );
    end component;
	 
    component parity_gen
        port( iD  : in  std_logic_vector(3 downto 0);
		        oP  : out std_logic );
    end component;	 

    signal sParity : std_logic;	 
begin

Inst_sh_reg:
    sh_reg
    port map( iD      => iD,
		        iSe     => iSe,
		        iLoad   => iLoad,
		        inReset => inReset,
		        iCLK    => iCLK,
		        iParity => sParity,
		        oQ      => oQ);
	
Inst_parity_gen:
    parity_gen
    port map( iD      => iD,
		        oP      => sParity );

end Behavioral;

