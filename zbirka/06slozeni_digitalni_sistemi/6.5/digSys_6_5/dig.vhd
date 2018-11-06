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

entity digSys_6_5 is
    Port ( iCLK     : in  std_logic;
           iRSTn    : in  std_logic;
           iWe      : in  std_logic;
           iAddress : in  std_logic_vector(1 downto 0);
           iD       : in  std_logic_vector(3 downto 0);
           oQ       : out std_logic_vector(3 downto 0));
end digSys_6_5;

architecture Behavioral of digSys_6_5 is

    component dec2x4
	     port( iWe      : in  std_logic;
		        iAddress : in  std_logic_vector(1 downto 0);          
		        oQ       : out std_logic_vector(3 downto 0) );
    end component;

    component reg
	     port( iCLK    : in  std_logic;
		        iWe     : in  std_logic;
		        iRSTn   : in  std_logic;
		        iD      : in  std_logic_vector(3 downto 0);          
		        oRegVal : out std_logic_vector(3 downto 0) );
    end component;

    component mux4x1
	     port( iD      : in  std_logic_vector(15 downto 0);
		        iSel    : in  std_logic_vector(1 downto 0);          
		        oY      : out std_logic_vector(3 downto 0) );
    end component;
	
	
    signal selReg    : std_logic_vector( 3 downto 0);
	 signal sRegOutD0 : std_logic_vector( 3 downto 0);
	 signal sRegOutD1 : std_logic_vector( 3 downto 0);
	 signal sRegOutD2 : std_logic_vector( 3 downto 0);
	 signal sRegOutD3 : std_logic_vector( 3 downto 0);
	 signal sRegOut   : std_logic_vector(15 downto 0);
begin

Inst_dec2x4: 
    dec2x4
	 port map( iWe      => iWe,
		        iAddress => iAddress,
		        oQ       => selReg );

Inst_reg0: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => iRSTn,
		        iRSTn   => selReg(0),
		        iD      => iD,
		        oRegVal => sRegOutD0);
				  
Inst_reg1: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => iRSTn,
		        iRSTn   => selReg(1),
		        iD      => iD,
		        oRegVal => sRegOutD1);

Inst_reg2: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => iRSTn,
		        iRSTn   => selReg(2),
		        iD      => iD,
		        oRegVal => sRegOutD2);

Inst_reg3: 
    reg 
	 port map( iCLK    => iCLK,
	           iWe     => iRSTn,
		        iRSTn   => selReg(3),
		        iD      => iD,
		        oRegVal => sRegOutD3);				  

    sRegOut <= sRegOutD3 & sRegOutD2 & sRegOutD1 & sRegOutD0;
				  				  
Inst_mux4x1:
    mux4x1
    port map( iD      => sRegOut,
		        iSel    => iAddress,
		        oY      => oQ);
				  
end Behavioral;
