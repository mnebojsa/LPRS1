----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:50 11/16/2018 
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
    port( iCLK   : in  std_logic;
	       iRSTn  : in  std_logic;
			 iStart : in  std_logic;
			 iq     : in  std_logic; 
	       iX     : in  std_logic_vector(3 downto 0);
			 oVec   : out std_logic_vector(3 downto 0)
	       );
end procesor;

architecture Behavioral of procesor is

    component mux4x1
	 port( iX   : in  std_logic_vector(15 downto 0);
		    iSel : in  std_logic_vector(1 downto 0);          
		    oFnc : out std_logic_vector(3 downto 0) );
    end component;

    component ALU
	 port( iSel : in  std_logic_vector(3 downto 0);
		    iA   : in  std_logic_vector(3 downto 0);
		    iB   : in  std_logic_vector(3 downto 0);
		    iC   : in  std_logic;          
		    oH   : out std_logic_vector(3 downto 0);
		    oC   : out std_logic );
    end component;


    component reg4b
	 port( iCLK  : in  std_logic;
		    iRSTn : in  std_logic;
		    iWR   : in  std_logic;
		    iData : in  std_logic_vector(3 downto 0);          
		    oData : out std_logic_vector(3 downto 0) );
    end component;

    component dec2x4
	 port( iX : in  std_logic_vector(1 downto 0);
		    iE : in  std_logic;          
		    oD : out std_logic_vector(3 downto 0) );
    end component;
	 

    component reg2b
	 port( iCLK   : in  std_logic;
		    iRSTn  : in  std_logic;
		    iWR    : in  std_logic;
		    iZero  : in  std_logic;
		    iCarry : in  std_logic;          
		    oData  : out std_logic_vector(1 downto 0) );
    end component;	 

    component CU
	 port( iStart : in  std_logic;
		    iQ     : in  std_logic;
		    iZ     : in  std_logic;
		    iC     : in  std_logic;          
		    oS     : out std_logic_vector(8 downto 0) );
    end component;


    signal sdec2reg  : std_logic_vector(3 downto 0);
	 signal sALJ_data : std_logic_vector(3 downto 0);
    signal sALJ_op0  : std_logic_vector(3 downto 0);
    signal sALJ_op1  : std_logic_vector(3 downto 0);	 
	 signal sReg0data : std_logic_vector(3 downto 0);
	 signal sReg1data : std_logic_vector(3 downto 0);
	 signal sReg2data : std_logic_vector(3 downto 0);
	 signal sReg3data : std_logic_vector(3 downto 0);
	 signal sCarry    : std_logic;
	 signal sCU       : std_logic_vector(8 downto 0);
	 signal sCZ       : std_logic_vector(1 downto 0);
	 signal iXdec     : std_logic_vector(1 downto 0);
	 signal mux0in    : std_logic_vector(15 downto 0);
	 signal mux1in    : std_logic_vector(15 downto 0);
	 signal sXdec     : std_logic_vector(1 downto 0);
	 signal sSelALU   : std_logic_vector(3 downto 0);
begin

mux0in <= sReg0data & sReg1data & sReg2data & sReg3data; 

Inst0_mux4x1:
    mux4x1
	 port map( iX   => mux0in,
		        iSel => sCU(1 downto 0),
		        oFnc => sALJ_op0 );

mux1in <= iX & sReg1data & sReg2data & sReg3data; 				  
Inst1_mux4x1:
    mux4x1
	 port map( iX   => mux1in,
		        iSel => sCU(3 downto 2),
		        oFnc => sALJ_op1 );

sSelALU <= sCU(5 downto 4) & "11";
Inst_ALU:
    ALU 
	 port map( iSel => sSelALU,
		        iA   => sALJ_op0 ,
		        iB   => sALJ_op1 ,
		        iC   => '0',
		        oH   => sALJ_data,
		        oC   => sCarry );	
oVec <= sALJ_data;

Inst0_reg4b:
    reg4b
    port map( iCLK  => iCLK,
	 	        iRSTn => iRSTn,
		        iWR   => sdec2reg(0),
		        iData => sALJ_data,
		        oData => sReg0data);	

Inst1_reg4b:
    reg4b
    port map( iCLK  => iCLK,
	 	        iRSTn => iRSTn,
		        iWR   => sdec2reg(1),
		        iData => sALJ_data,
		        oData => sReg1data);	

Inst2_reg4b:
    reg4b
    port map( iCLK  => iCLK,
	 	        iRSTn => iRSTn,
		        iWR   => sdec2reg(2),
		        iData => sALJ_data,
		        oData => sReg2data);	

Inst3_reg4b:
    reg4b
    port map( iCLK  => iCLK,
	 	        iRSTn => iRSTn,
		        iWR   => sdec2reg(3),
		        iData => sALJ_data,
		        oData => sReg3data);	

sXdec <= sCU(7) & sCU(6);
Inst_dec2x4:
    dec2x4
    port map( iX => sXdec,
		        iE => sCU(8),
		        oD => sdec2reg);

Inst_Carry_Zero:
    reg2b
	 port map( iCLK   => iCLK,
		        iRSTn  => iRSTn,
		        iWR    => '1',
		        iZero  => '0',
		        iCarry => sCarry,
		        oData  => sCZ );

Inst_CU:
    CU
	 port map( iStart => iStart,
		        iQ     => iq,
		        iZ     => sCZ(0),
		        iC     => sCZ(1),
		        oS     => sCU );
				  
end Behavioral;

