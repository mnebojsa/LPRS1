----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:58 11/19/2018 
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
use work.mux_generics.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity procesor is
    generic( bus_width : integer := 16 );
				 
    port( iCLK   : in  std_logic;
		    iRST   : in  std_logic;
			 iRUN   : in  std_logic;
			 iINSTR : in  std_logic_vector( 9 downto 0);
			 iDATA  : in  std_logic_vector(bus_width-1 downto 0);
			 oBUS   : out std_logic_vector(bus_width-1 downto 0);
			 oPC    : out std_logic_vector(bus_width-1 downto 0);
			 oDADDR : out std_logic_vector(bus_width-1 downto 0) );
end procesor;

architecture proc_arch of procesor is

    component ALU
	     generic( bus_width : integer := 16;
		           selSigNum : integer := 1 );
	     port( iX      : in  std_logic_vector(bus_width-1 downto 0);
		        iY      : in  std_logic_vector(bus_width-1 downto 0);
		        iSel    : in  std_logic_vector(selSigNum-1 to 0);          
		        oCarry  : out std_logic;
		        oResult : out std_logic_vector(bus_width-1 downto 0) );
    end component;

    component reg
	     generic( bus_width : integer := 16 );
		  
	     port( iCLK  : in  std_logic;
		        iRST  : in  std_logic;
		        iWE   : in  std_logic;
		        iData : in  std_logic_vector(bus_width-1 downto 0);          
		        oData : out std_logic_vector(bus_width-1 downto 0) );
    end component;
 
	 
    component multiplekser
        generic( bus_width     : integer := 16;
                 num_of_inputs : integer := 10 );
		  
	     port( iX        : in  WORD_ARRAY_type;
	           iDATA_SEL : in  std_logic;
				  iG_SEL    : in  std_logic;
				  iREG_SEL  : in  std_logic_vector(2 downto 0);	  
		        oData     : out std_logic_vector(bus_width-1 downto 0) );
    end component;

    component DEC
	     port( iDATA : in  std_logic_vector(2 downto 0);
		        iEN   : in  std_logic;          
		        oDec  : out std_logic_vector(7 downto 0));
    end component;


    component cnt
	     port( iCLK    : in  std_logic;
		        iRST    : in  std_logic;
		        iPC_CLR : in  std_logic;
		        iPC_En  : in  std_logic;          
		        oCnt    : out std_logic_vector(15 downto 0) );
    end component; 
	 
    component CU
	     port( iCLK      : in  std_logic;
		        iRUN      : in  std_logic;
		        inRST     : in  std_logic;
		        iINST     : in  std_logic_vector( 9 downto 0);
		        iPC       : in  std_logic_vector(15 downto 0);
		        PC_CLEAR  : out std_logic;  
				  PC_EN     : out std_logic;  
				  REG_SEL   : out std_logic_vector(2 downto 0);  
				  REG_IN    : out std_logic_vector(2 downto 0);  
				  REG_EN    : out std_logic;  
				  ACC_WE    : out std_logic;  
				  RESULT_WE : out std_logic;  
				  ALU_SEL   : out std_logic_vector(0 to 0);  
				  G_SEL     : out std_logic;  
				  DATA_SEL  : out std_logic );
    end component; 
 

    type REGISTER_OUTPUT is array(15 downto 0) of std_logic_vector(15 downto 0);
	 signal sR : REGISTER_OUTPUT;
	 
	 signal sREG_WE  : std_logic_vector(7 downto 0);	 
	 
	 signal sBUS     : std_logic_vector(bus_width-1 downto 0);	 
	 signal sRegA    : std_logic_vector(bus_width-1 downto 0);
	 signal sRESULT  : std_logic_vector(bus_width-1 downto 0);
	 signal sG       : std_logic_vector(bus_width-1 downto 0);
	 
    signal sREG_SEL : std_logic_vector(2 downto 0);
    signal sG_SEL   : std_logic;
    signal sDATA_SEL: std_logic;	 
	 
	 signal sALU_SEL : std_logic_vector(0 to 0); 
	 signal sACC_WE  : std_logic;
	 signal sDummy   : std_logic;
	 signal sRESULT_WE : std_logic;
	 signal sX       : WORD_ARRAY_type;
    
	 signal sINST     : std_logic_vector(9 downto 0);
	 signal sREG_IN   : std_logic_vector(2 downto 0);
	 signal sREG_EN   : std_logic;
	 
	 signal sPC_CLEAR : std_logic;
	 signal sPC_EN    : std_logic;
	 signal sPC	      : std_logic_vector(bus_width-1 downto 0);
	 
begin

Inst_ALU:
    ALU 
	 port map( iX      => sRegA,
		        iY      => sBUS,
		        iSel    => sALU_SEL,
		        oCarry  => sDummy,
		        oResult => sRESULT );
			 
GEN_REG: 
    for I in 0 to 7 generate
      REGX : REG 
		port map( iCLK  => iCLK,
		          iRST  => iRST,
		          iWE   => sREG_WE(I),
		          iData => sBUS,
		          oData => sR(I) );
      end generate GEN_REG;	

Inst_RegA:
    REG 
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => sACC_WE,
		        iData => sBUS,
		        oData => sRegA );

Inst_RegG: REG 
	     generic map( bus_width => 16
	)
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => sRESULT_WE,
		        iData => sRESULT,
		        oData => sG );	
				  
Inst_InstructionReg:
    REG 
	     generic map( bus_width => 10
	) 
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => iRUN,
		        iData => iINSTR,
		        oData => sINST );				  

Inst_DEC: 
    DEC
	 port map( iDATA => sREG_IN,
		        iEN   => sREG_EN,
		        oDec  => sREG_WE);
	
Inst_cnt: 
    cnt
	 port map( iCLK    => iCLK,
		        iRST    => iRST,
		        iPC_CLR => sPC_CLEAR,
		        iPC_En  => sPC_EN,
		        oCnt    => sPC);
		

sX      <= (iDATA, sR(0), sR(1), sR(2), sR(3), sR(4), sR(5), sR(6), sR(7), sG);

Inst_multiplekser:
    multiplekser
	 port map( iX         => sX,
	           iDATA_SEL  => sDATA_SEL,
				  iG_SEL     => sG_SEL,
				  iREG_SEL	 => sREG_SEL,
		        oData      => sBUS );

Inst_CU:
    CU 
	 port map( iCLK     => iCLK, 
           	  iRUN     => iRUN,
		        inRST    => iRST,
		        iINST    => sINST,
		        iPC      => sPC,
		        PC_CLEAR => sPC_CLEAR,
				  PC_EN    => sPC_EN,
				  REG_SEL  => sREG_SEL,
				  REG_IN   => sREG_IN,
				  REG_EN   => sREG_EN,
				  ACC_WE   => sACC_WE,
				  RESULT_WE => sRESULT_WE,
				  ALU_SEL  => sALU_SEL,
				  G_SEL    => sG_SEL,
				  DATA_SEL => sDATA_SEL );	

    oBUS <= sBUS;	
    oPC  <= sPC;
	 oDADDR(2 downto 0) <= sINST(2 downto 0);
    oDADDR(9 downto 3) <= (others => '0');	 
end proc_arch;

