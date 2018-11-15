----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:24:22 11/19/2018 
-- Design Name: 
-- Module Name:    procesor - Behavioral 
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

entity procesor is
    port( iCLK      : in  std_logic;
          iRESET    : in  std_logic;
          iX        : in  std_logic_vector( 3 downto 0);
          iSEL	     : in  std_logic_vector(11 downto 0);
          oALJ_SEL  : out std_logic_vector( 2 downto 0);
          oAMUX_SEL : out std_logic_vector( 1 downto 0);
          oBMUX_SEL : out std_logic_vector( 1 downto 0);
          oREG_SEL  : out std_logic_vector( 1 downto 0);
          oREG_WE   : out std_logic;
          oINC      : out std_logic;
          oDEC      : out std_logic;
          oH        : out std_logic_vector( 3 downto 0);
          oC        : out std_logic );
end procesor;

architecture RTL of procesor is

    component ALU
	     port( iA   : in  std_logic_vector(3 downto 0);
		        iB   : in  std_logic_vector(3 downto 0);
		        iSEL : in  std_logic_vector(2 downto 0);          
		        oH   : out std_logic_vector(3 downto 0);
		        oC   : out std_logic );
    end component;

    component decoder
	     port( iX  : in  std_logic_vector(1 downto 0);
		        iEN : in  std_logic;          
		        oY  : out std_logic_vector(3 downto 0) );
    end component;

    component muc4vx1v
	     port( iX0  : in  std_logic_vector(3 downto 0);
		        iX1  : in  std_logic_vector(3 downto 0);
		        iX2  : in  std_logic_vector(3 downto 0);
		        iX3  : in  std_logic_vector(3 downto 0);
		        iSEL : in  std_logic_vector(1 downto 0);          
		        oY   : out std_logic_vector(3 downto 0) );
    end component;

    component cnt
	     port( iCLK   : in  std_logic;
		        iRESET : in  std_logic;
		        iINC   : in  std_logic;
		        iDEC   : in  std_logic;          
		        oQ     : out std_logic_vector(1 downto 0) );
    end component;


    component reg
	     port( iCLK : in  std_logic;
		        iCLR : in  std_logic;
		        iCE  : in  std_logic;
		        iD   : in  std_logic_vector(3 downto 0);          
		        oQ   : out std_logic_vector(3 downto 0) );
    end component;

    constant cONE: STD_LOGIC := '1';

    alias sALJ_SEL  : std_logic_vector(2 downto 0) is iSEL(2 downto 0);
    alias sAMUX_SEL : std_logic_vector(1 downto 0) is iSEL(4 downto 3);
    alias sBMUX_SEL : std_logic_vector(1 downto 0) is iSEL(6 downto 5);
    alias sREG_SEL  : std_logic_vector(1 downto 0) is iSEL(8 downto 7);
    alias sREG_WE   : std_logic                    is iSEL(9);
    alias sINC      : std_logic                    is iSEL(10);
    alias sDEC      : std_logic                    is iSEL(11);
	 
-- registri
    signal sR0 : std_logic_vector(3 downto 0);
    signal sR1 : std_logic_vector(3 downto 0);
    signal sR2 : std_logic_vector(3 downto 0);
    signal sR3 : std_logic_vector(3 downto 0);

    signal sR30 : std_logic_vector(3 downto 0);
    signal sR31 : std_logic_vector(3 downto 0);
    signal sR32 : std_logic_vector(3 downto 0);
    signal sR33 : std_logic_vector(3 downto 0);

-- ulazni vektori u ALJ
    signal sA : std_logic_vector(3 downto 0);
    signal sB : std_logic_vector(3 downto 0);	 

-- rezultat ALJ
    signal sF : std_logic_vector(3 downto 0);
    signal sC : std_logic; -- izlazni prenos

-- izlaz dekodera -> dozvola upisa u registre
    signal sWE : std_logic_vector(3 downto 0);

-- izlaz dekodera -> dozvola upisa u stek registre
    signal sREG3_EN : std_logic_vector(3 downto 0);
    signal sWE3     : std_logic_vector(3 downto 0);

-- vrednost brojaca
signal sCNT: std_logic_vector(1 downto 0);

begin

Inst_ALU:
    ALU 
	 port map( iA   => sA,
		        iB   => sB,
		        iSEL => sALJ_SEL,
		        oH   => sF,
		        oC   => sC);

Inst0_decoder:
    decoder 
	 port map( iX  => sREG_SEL,
		        iEN => sREG_WE,
		        oY  => sWE);
	
Inst1_decoder:
    decoder 
	 port map( iX  => sCNT,
		        iEN => cONE,
		        oY  => sREG3_EN);
				  
Inst0_muc4vx1v:
    muc4vx1v 
	 port map( iX0  => sR0,
		        iX1  => sR1,
		        iX2  => sR2,
		        iX3  => iX,
		        iSEL => sAMUX_SEL,
		        oY   => sA);

Inst1_muc4vx1v:
    muc4vx1v 
	 port map( iX0  => sR0,
		        iX1  => sR1,
		        iX2  => sR2,
		        iX3  => sR3,
		        iSEL => sBMUX_SEL,
		        oY   => sB);

Inst2_muc4vx1v:
    muc4vx1v 
	 port map( iX0  => sR30,
		        iX1  => sR31,
		        iX2  => sR32,
		        iX3  => sR33,
		        iSEL => sCNT,
		        oY   => sR3);				  

Inst_cnt:
    cnt
	 port map( iCLK   => iCLK,
		        iRESET => iRESET,
		        iINC   => sINC,
		        iDEC   => sDEC,
		        oQ     => sCNT);
				  
Inst0_reg:
    reg 
	 port map( iCLK => iCLK,
		        iCLR => iRESET,
		        iCE  => sWE(0),
		        iD   => sF,
		        oQ   => sR0 );				  

Inst1_reg:
    reg 
	 port map( iCLK => iCLK,
		        iCLR => iRESET,
		        iCE  => sWE(1),
		        iD   => sF,
		        oQ   => sR1 );
Inst2_reg:
    reg 
	 port map( iCLK => iCLK,
		        iCLR => iRESET,
		        iCE  => sWE(2),
		        iD   => sF,
		        oQ   => sR2 );
				  
    sWE3(0) <= sWE(3) and sREG3_EN(0);
    sWE3(1) <= sWE(3) and sREG3_EN(1);
    sWE3(2) <= sWE(3) and sREG3_EN(2);
    sWE3(3) <= sWE(3) and sREG3_EN(3);				  
				  
Inst30_reg:
    reg 
	 port map( iCLK => iCLK,
		        iCLR => iRESET,
		        iCE  => sWE3(0),
		        iD   => sF,
		        oQ   => sR30 );
Inst31_reg:
    reg 
	 port map( iCLK => iCLK,
		        iCLR => iRESET,
		        iCE  => sWE3(1),
		        iD   => sF,
		        oQ   => sR31 );
Inst32_reg:
    reg 
	 port map( iCLK => iCLK,
		        iCLR => iRESET,
		        iCE  => sWE3(2),
		        iD   => sF,
		        oQ   => sR32 );
				  
Inst33_reg:
    reg 
	 port map( iCLK => iCLK,
		        iCLR => iRESET,
		        iCE  => sWE3(3),
		        iD   => sF,
		        oQ   => sR33 );	


    oALJ_SEL  <= sALJ_SEL;
    oAMUX_SEL <= sAMUX_SEL;
    oBMUX_SEL <= sBMUX_SEL;
    oREG_SEL  <= sREG_SEL;
    oREG_WE   <= sREG_WE;
    oINC      <= sINC;
    oDEC      <= sDEC;
    oH        <= sF;
    oC        <= sC;				  
				  
end RTL;

