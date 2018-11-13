----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:54 11/09/2018 
-- Design Name: 
-- Module Name:    mul - Behavioral 
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

entity mul is
   port( iCLK   : in  std_logic;
	      iRSTn  : in  std_logic;
	      iX     : in  std_logic_vector(3 downto 0);
         iY     : in  std_logic_vector(3 downto 0);
         iStart : in  std_logic;
			oReady : out std_logic;
			oRes   : out std_logic_vector(7 downto 0) );
end mul;

architecture RTL of mul is

    component reg
	 port( iCLK  : in  std_logic;
		    inCLR : in  std_logic;
		    iCE   : in  std_logic;
		    iD    : in  std_logic_vector(3 downto 0);          
		    oQ    : out std_logic_vector(3 downto 0) );
    end component;

    component shReg
	 port( iCLK   : in  std_logic;
		    inCLRn : in  std_logic;
		    iLOAD  : in  std_logic;
		    iSE    : in  std_logic;
		    iD     : in  std_logic_vector(3 downto 0); 
		    oDSR   : out std_logic;			 
		    oQ     : out std_logic_vector(3 downto 0) );
    end component;

    component cnt
	 port( iCLK     : in  std_logic;
		    inRESETn : in  std_logic;
		    iEN      : in  std_logic;
		    iP       : in  std_logic;         
		    oQ       : out std_logic_vector(1 downto 0);
		    oTSE     : out std_logic );
    end component;

    component add4
	 port( iX   : in  std_logic_vector(3 downto 0);
		    iY   : in  std_logic_vector(3 downto 0);          
		    oRes : out std_logic_vector(4 downto 0) );
    end component;
	 
    component command_unit
	 port( iCLK      : in  std_logic;
		    inRESETn  : in  std_logic;
		    iSTART    : in  std_logic;
		    iY0       : in  std_logic;
		    iCNT_0    : in  std_logic;          
		    oLoad_Cnt : out std_logic;
		    oLoad_X   : out std_logic;
		    oLoad_Y   : out std_logic;
		    oLoad_A   : out std_logic;
		    onRSTn_A  : out std_logic;
		    oCE       : out std_logic;
		    oREADY    : out std_logic );
    end component; 

    component ACC
	 port( inRESETn : in  std_logic;
		    iLOAD    : in  std_logic;
		    iData    : in  std_logic_vector(7 downto 0);          
		    oData    : out std_logic_vector(7 downto 0) );
    end component;

    signal siX       : std_logic_vector(3 downto 0);
    signal sWEX      : std_logic;
	 signal sWEY      : std_logic;
	 signal sShEn     : std_logic;
    signal soDSR     : std_logic;	
    signal sCntEn    : std_logic;
    signal sCntQ     : std_logic_vector(1 downto 0);
    signal sCntTSE   : std_logic;	
    signal sWr2Acc   : std_logic;
    signal sonRSTn_A : std_logic;	 
	 signal soQX      : std_logic_vector(3 downto 0);
	 signal soQY      : std_logic_vector(3 downto 0);
	 signal sAccIn    : std_logic_vector(7 downto 0);
	 signal sAccOut   : std_logic_vector(7 downto 0);
	 signal sHB,sLB   : integer range 0 to 8;  
    signal siY       : std_logic_vector(3 downto 0);	 
begin
    sAccIn(7 downto 5) <= "000";
Inst_reg: 
    reg
	 port map( iCLK  => iCLK,
		        inCLR => iRSTn,
		        iCE   => sWEX,
		        iD    => iX,
		        oQ    => soQX );	 
				  
Inst_shReg:
    shReg 
	 port map( iCLK   => iCLK,
		        inCLRn => iRSTn,
		        iLOAD  => sWEY,
		        iSE    => sShEn,
		        iD     => iY,
				  oDSR   => soDSR,
		        oQ     => soQY );	

Inst_cnt:
    cnt
	 port map( iCLK     => iCLK,
		        inRESETn => iRSTn,
		        iEN      => sCntEn,
		        iP       => sCntEn,
		        oQ       => sCntQ,
		        oTSE     => sCntTSE );	
		
    sHB <= 4 + to_integer(unsigned(sCntQ));		
    sLB <= to_integer(unsigned(sCntQ));
	 siY <= sAccOut(sHB downto sLB); 
Inst_add4:
    add4 
	 port map( iX   => soQX,
		        iY   => siY,
		        oRes => sAccIn(4 downto 0) );				  

Inst_command_unit:
    command_unit
	 port map( iCLK      => iCLK,
		        inRESETn  => iRSTn,
		        iSTART    => iSTART,
		        iY0       => soDSR,
		        iCNT_0    => sCntTSE,
		        oLoad_Cnt => sCntEn,
		        oLoad_X   => sWEX,
		        oLoad_Y   => sWEY,
		        oLoad_A   => sWr2Acc,
		        onRSTn_A  => sonRSTn_A,
		        oCE       => sShEn,
		        oREADY    => oReady );
				  
Inst_ACC:
    ACC
	 port map( inRESETn => iRSTn,
		        iLOAD    => sWr2Acc,
		        iData    => sAccIn,
		        oData    => sAccOut );				  

    oRes <= sAccOut;

end RTL;