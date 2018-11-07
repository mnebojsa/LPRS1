----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:21 11/06/2018 
-- Design Name: 
-- Module Name:    digSys_6_6 - Behavioral 
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


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:54 11/06/2018 
-- Design Name: 
-- Module Name:    digSys_6_5 - Behavioral 
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

entity digSys_6_6 is
    Port ( iCLK     : in  std_logic;
           iRSTn    : in  std_logic;
           iWe      : in  std_logic;
			  iOe      : in  std_logic;
           iAddress : in  std_logic_vector(1 downto 0);
           iD       : in  std_logic_vector(3 downto 0);
           oQ       : out std_logic_vector(3 downto 0));
end digSys_6_6;

architecture Behavioral of digSys_6_6 is

    component dec3x8
	     port( iWe      : in  std_logic;
		  	     iOe      : in  std_logic;
		        iAddress : in  std_logic_vector(1 downto 0);          
		        oQ       : out std_logic_vector(3 downto 0);
              oQoe     : out std_logic_vector(3 downto 0) );
    end component;

    component reg
	     port( iCLK    : in  std_logic;
		        iWe     : in  std_logic;
		        iRSTn   : in  std_logic;
		        iD      : in  std_logic_vector(3 downto 0);          
		        oRegVal : out std_logic_vector(3 downto 0) );
    end component;

    component buff
	     port( iD      : in  std_logic_vector(3 downto 0);
		        iOEn    : in  std_logic;          
		        oY      : out std_logic_vector(3 downto 0) );
    end component;
	
	
    signal selReg    : std_logic_vector( 3 downto 0);
	 signal sRegOutD0 : std_logic_vector( 3 downto 0);
	 signal sRegOutD1 : std_logic_vector( 3 downto 0);
	 signal sRegOutD2 : std_logic_vector( 3 downto 0);
	 signal sRegOutD3 : std_logic_vector( 3 downto 0);
	 
	 signal selOE     : std_logic_vector( 3 downto 0);

begin

Inst_dec3x8: 
    dec3x8
	 port map( iWe             => iWe,
	           iOe             => iOe,
		        iAddress        => iAddress,
		        oQ              => selReg,
              oQoe            => selOE );

Inst_reg0: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => selReg(0),
		        iRSTn   => iRSTn,
		        iD      => iD,
		        oRegVal => sRegOutD0);
				  
Inst_reg1: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => selReg(1),
		        iRSTn   => iRSTn,
		        iD      => iD,
		        oRegVal => sRegOutD1);

Inst_reg2: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => selReg(2),
		        iRSTn   => iRSTn,
		        iD      => iD,
		        oRegVal => sRegOutD2);

Inst_reg3: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => selReg(3),
		        iRSTn   => iRSTn,
		        iD      => iD,
		        oRegVal => sRegOutD3);				  
				  				  
Inst_buff0:
    buff
    port map( iD      => sRegOutD0,
		        iOEn    => selOE(0),
		        oY      => oQ);

Inst_buff1:
    buff
    port map( iD      => sRegOutD1,
		        iOEn    => selOE(1),
		        oY      => oQ);

Inst_buff2:
    buff
    port map( iD      => sRegOutD2,
		        iOEn    => selOE(2),
		        oY      => oQ);

Inst_buff3:
    buff
    port map( iD      => sRegOutD3,
		        iOEn    => selOE(3),
		        oY      => oQ);				  
				  
end Behavioral;
