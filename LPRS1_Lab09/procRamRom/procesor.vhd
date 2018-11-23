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
	 generic( bus_width : integer := 16;
		       selSigNum : integer := 2 );
				 
    port( iCLK   : in  std_logic;
		    iRST   : in  std_logic;
			 iRUN   : in  std_logic;
			 iINSTR : in  std_logic_vector(11 downto 0);
			 iDATA  : in  std_logic_vector(bus_width-1 downto 0);	 
			 oDATA  : out std_logic_vector(bus_width-1 downto 0);
			 oDADDR : out std_logic_vector(bus_width-1 downto 0);
			 oMulDone: out std_logic;
			 oWE    : out std_logic;				 
			 oPC    : out std_logic_vector(bus_width-1 downto 0) );
end procesor;

architecture proc_arch of procesor is

    component ALU
	     generic( bus_width : integer := 16;
		           selSigNum : integer := 2 );
	     port( iX      : in  std_logic_vector(bus_width-1 downto 0);
		        iY      : in  std_logic_vector(bus_width-1 downto 0);
		        iSel    : in  std_logic_vector(selSigNum-1 downto 0);          
		        oCarry  : out std_logic;
		        oResult : out std_logic_vector(bus_width-1 downto 0) );
    end component;

    component MULTP
	     port( iCLK  : in  std_logic;
		        iRST  : in  std_logic;
		        iRUN  : in  std_logic;
		        G0_WE : in std_logic;
		        G1_WE : in std_logic;
		        iA    : in  std_logic_vector(15 downto 0);
		        iB    : in  std_logic_vector(15 downto 0);
              oSerOut: out std_logic;				  
		        oDone : out std_logic;
		        oRes  : out std_logic_vector(31 downto 0) );
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
                 num_of_inputs : integer := 11 );
		  
	     port( iX        : in  WORD_ARRAY_type;
	           iDATA_SEL : in  std_logic;
				  iG_SEL    : in  std_logic_vector(1 downto 0);
				  iREG_SEL  : in  std_logic_vector(2 downto 0);	  
		        oData     : out std_logic_vector(bus_width-1 downto 0) );
    end component;

    component mux2x1
        generic( bus_width     : integer := 16 );	 
	     port( iX0   : in  std_logic_vector(15 downto 0);
		        iX1   : in  std_logic_vector(15 downto 0);
		        iSEL  : in  std_logic_vector( 1 downto 0);          
		        oData : out std_logic_vector(15 downto 0) );
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
	 	  generic( selSigNum : integer := 2 );
        port( iCLK      : in  std_logic;
	           iRUN      : in  std_logic;
		        iRST      : in  std_logic;
		        iINST     : in  std_logic_vector(11 downto 0);
			     iSTATUS   : in  std_logic_vector( 4 downto 0);	
			     iG_SH_val : in  std_logic;
			     iMltpDone : in  std_logic;
		        oPC_CLEAR : out std_logic;  
		        oPC_EN    : out std_logic;				  
			     oREG_SEL  : out std_logic_vector(2 downto 0);  
			     oREG_IN   : out std_logic_vector(2 downto 0);  
			     oREG_EN   : out std_logic;  
			     oACC_WE   : out std_logic;				  
			     oALU_SEL  : out std_logic_vector(selSigNum-1 downto 0); 
				  oRunMltp  : out std_logic;
				  oMulMuxSel: out std_logic_vector(1 downto 0);
              oMulOp1_WE: out std_logic;				  
              oG0_WE    : out std_logic;
              oG1_WE    : out std_logic;				  
              oG_SEL    : out std_logic_vector(1 downto 0); 		 
			     oDATA_SEL : out std_logic;
              oDATA_WE  : out std_logic;
			     oADDR_WE  : out std_logic;
			     oMUX_A_sel: out std_logic_vector(1 downto 0);
			     oG_WE     : out std_logic; 
			     oWE       : out std_logic ); 
    end component; 

    type REGISTER_OUTPUT is array(15 downto 0) of std_logic_vector(15 downto 0);
	 signal sR : REGISTER_OUTPUT; 

-- Instruction REG
	 signal s_INSTR       : std_logic_vector(11 downto 0);
	 
--	Status REG signals 
	 signal s_Status      : std_logic_vector(4 downto 0);
	 signal sStatusFlag_Z : std_logic;
	 signal sStatusFlag_N : std_logic;
	 signal sStatusFlag_O : std_logic;
	 signal sStatusFlag_C : std_logic;
	 signal sSF_Mul_Done  : std_logic;

-- MUX_A signals
	 signal s_RegA        : std_logic_vector(bus_width-1 downto 0);
	 signal s_Dummy       : std_logic_vector(bus_width-1 downto 0);
	 signal s_muxASel     : std_logic_vector(1 downto 0);	 
    signal s_BUS         : std_logic_vector(bus_width-1 downto 0);	 
	 signal s_REGAIn      : std_logic_vector(bus_width-1 downto 0);

	 signal s_ACC_WE      : std_logic;
	 
-- ALU signals
    signal s_ALU_SEL     : std_logic_vector(selSigNum-1 downto 0);
	 signal s_RESULT      : std_logic_vector(bus_width-1 downto 0);
	 signal s_Carry       : std_logic;

-- REG_G signals 
	 signal s_SHG1_EN     : std_logic;
	 signal s_SHG0_EN     : std_logic;	 

	 signal s_G_WE        : std_logic;
    signal s_G           : std_logic_vector(bus_width-1 downto 0);

-- STORE REG signals
    signal s_REG_WE      : std_logic_vector(7 downto 0);

-- Decoder signals
    signal s_REG_SEL     : std_logic_vector(2 downto 0);
	 signal s_REG_IN      : std_logic_vector(2 downto 0);
	 signal s_REG_EN      : std_logic;
	 
-- Counter signals
	 signal s_PC_CLEAR    : std_logic;
	 signal s_PC_EN       : std_logic;
	 signal s_PC	       : std_logic_vector(bus_width-1 downto 0);

-- Output2Mem signals
	 signal s_ADDR_WE     : std_logic;
	 signal s_DATA_WE     : std_logic;
	 signal s_WE          : std_logic;
	 signal s_outData     : std_logic_vector(bus_width-1 downto 0);
	 signal s_DADDR       : std_logic_vector(bus_width-1 downto 0);

-- MUX bus sel
    signal s_DATA_SEL    : std_logic;
    signal s_G_SEL       : std_logic_vector(1 downto 0);
	 signal sX            : WORD_ARRAY_type; 

-- MULTIPLAYER signals

	 signal s_MulOP1_WE     : std_logic;
	 signal s_MulOP2_WE     : std_logic;

	 signal s_MultiplyDone  : std_logic;
	 signal s_MulRes        : std_logic_vector(31 downto 0); 
	 
	 signal s_MuxMulSel     : std_logic_vector( 1 downto 0);
	 signal s_MulResI       : std_logic_vector(15 downto 0); 
	 signal s_MultiplyRun   : std_logic;	 
	 signal s_SerOutG0      : std_logic;

-- REG for multiply operand

	 signal s_MUL_OP1_WE    : std_logic;
	 signal s_RegMACC       : std_logic_vector(15 downto 0); 
begin

Inst_MUL_OP2_REG:
    REG 
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => s_MUL_OP1_WE,
		        iData => s_BUS,
		        oData => s_RegMACC );

Inst_MULTP:
    MULTP
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iRUN  => s_MultiplyRun,
		        G0_WE => s_MulOP1_WE,
		        G1_WE => s_MulOP2_WE,
		        iA    => s_RegMACC,
		        iB    => s_BUS,
				  oSerOut=>s_SerOutG0,
		        oDone => s_MultiplyDone,
		        oRes  => s_MulRes );

Inst_ALU:
    ALU 
	 port map( iX      => s_RegA,
		        iY      => s_BUS,
		        iSel    => s_ALU_SEL,
		        oCarry  => s_Carry,
		        oResult => s_RESULT );

InstMultip_mux2x1:
    mux2x1
	 port map( iX0   => s_MulRes(31 downto 16),
		        iX1   => s_MulRes(15 downto  0),
		        iSEL  => s_MuxMulSel,
		        oData => s_MulResI);
				  
GEN_REG: 
    for I in 0 to 7 generate
      REGX : REG 
		port map( iCLK  => iCLK,
		          iRST  => iRST,
		          iWE   => s_REG_WE(I),
		          iData => s_BUS,
		          oData => sR(I) );
      end generate GEN_REG;	

InstA_mux2x1:
    mux2x1
	 port map( iX0   => s_BUS,
		        iX1   => s_Dummy,
		        iSEL  => s_MuxASel,
		        oData => s_REGAIn);

Inst_RegA:
    REG 
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => s_ACC_WE,
		        iData => s_REGAIn,
		        oData => s_RegA );

Inst_REG_G:
    REG 
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => s_G_WE,
		        iData => s_RESULT,
		        oData => s_G );
				  
	 
process(s_G, s_Carry, s_MultiplyDone)
    variable v_MulDone : std_logic := '0';
begin
	 
    if s_G = "0000000000000000" then
        sStatusFlag_Z <= '0';
	 else
        sStatusFlag_Z <= '1';
    end if;	

    sStatusFlag_C <= s_Carry;
    sStatusFlag_O <= s_Carry; 
	 	 
    sStatusFlag_N <= '0';
	 
	 if s_MultiplyDone = '1' then
       v_MulDone := '1';
    else 
        v_MulDone := v_MulDone;	 
	 end if;	  
	 
	 sSF_Mul_Done <= v_MulDone; 
end process;

    s_Status <= sStatusFlag_Z & sStatusFlag_N & sStatusFlag_O & sStatusFlag_C & s_MultiplyDone;

Inst_DOUT:
    REG 
	 generic map( bus_width => 16 )
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => s_DATA_WE,
		        iData => s_BUS,
		        oData => s_outData );	
				  
Inst_ADDR:
    REG 
	 generic map( bus_width => 16 )
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => s_ADDR_WE,
		        iData => s_BUS,
		        oData => s_DADDR );					  
				  
Inst_InstructionReg:
    REG 
	 generic map( bus_width => 12 ) 
	 port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iWE   => iRUN,
		        iData => iINSTR,
		        oData => s_INSTR );				  

Inst_DEC: 
    DEC
	 port map( iDATA => s_REG_IN,
		        iEN   => s_REG_EN,
		        oDec  => s_REG_WE);
	
Inst_cnt: 
    cnt
	 port map( iCLK    => iCLK,
		        iRST    => iRST,
		        iPC_CLR => s_PC_CLEAR,
		        iPC_En  => s_PC_EN,
		        oCnt    => s_PC);
		

sX      <= (iDATA, sR(0), sR(1), sR(2), sR(3), sR(4), sR(5), sR(6), sR(7), s_MulResI, s_G);

Inst_multiplekser:
    multiplekser
	 port map( iX         => sX,
	           iDATA_SEL  => s_DATA_SEL,
				  iG_SEL     => s_G_SEL,
				  iREG_SEL	 => s_REG_SEL,
		        oData      => s_BUS );

Inst_CU:
    CU 
	 port map( iCLK      => iCLK, 
           	  iRUN      => iRUN,
		        iRST      => iRST,
		        iINST     => s_INSTR,
				  iSTATUS   => s_Status,
				  iG_SH_val => s_SerOutG0,
				  iMltpDone => s_MultiplyDone,
		        oPC_CLEAR => s_PC_CLEAR,
				  oPC_EN    => s_PC_EN,
				  oREG_SEL  => s_REG_SEL,
				  oREG_IN   => s_REG_IN,
				  oREG_EN   => s_REG_EN,
				  oACC_WE   => s_ACC_WE,
				  oALU_SEL  => s_ALU_SEL,
				  oRunMltp  => s_MultiplyRun,
				  oMulMuxSel=> s_MuxMulSel,
				  oMulOp1_WE=>s_MUL_OP1_WE,
              oG0_WE    => s_MulOP1_WE,
              oG1_WE		=>	s_MulOP2_WE,	  
              oG_SEL    => s_G_SEL,
				  oDATA_SEL => s_DATA_SEL,
              oDATA_WE  => s_DATA_WE,
			     oADDR_WE  => s_ADDR_WE,
				  oMUX_A_sel=> s_MuxASel,
				  oG_WE     => s_G_WE,
			     oWE       => s_WE );	


    oDATA  <= s_outData;
	 oDADDR <= s_DADDR;
	 oWE    <= s_WE;	 
	 oPC    <= s_PC;
	 oMulDone <= s_MultiplyDone;
	 
end proc_arch;

