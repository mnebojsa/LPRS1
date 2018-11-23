----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:02 11/29/2018 
-- Design Name: 
-- Module Name:    mnozac - Behavioral 
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

entity mnozac is
    port( iCLK  : in  std_logic;
	       iRST  : in  std_logic;
			 iRUN  : in  std_logic;
			 G0_WE : in  std_logic;
			 G1_WE : in  std_logic;
	       iA    : in  std_logic_vector(15 downto 0);
		    iB    : in  std_logic_vector(15 downto 0);
          oRes  : out std_logic_vector(31 downto 0) );			 
end mnozac;

architecture Behavioral of mnozac is

    component ALU
	     generic( bus_width : integer := 16;
		           selSigNum : integer := 2 );
	     port( iX      : in  std_logic_vector(bus_width-1 downto 0);
		        iY      : in  std_logic_vector(bus_width-1 downto 0);
		        iSel    : in  std_logic_vector(selSigNum-1 downto 0);          
		        oCarry  : out std_logic;
		        oResult : out std_logic_vector(bus_width-1 downto 0) );
    end component;

    component SH_REG
	 generic( bus_width : integer := 16 );
	     port( iCLK    : in  std_logic;
		        iRST    : in  std_logic;
		        iData   : in  std_logic_vector(bus_width-1 downto 0);
		        iSerIn  : in  std_logic;
		        iWR_EN  : in  std_logic;
		        iSH_EN  : in  std_logic;          
		        oSerOut : out std_logic;
		        oPrlOut : out std_logic_vector(bus_width-1 downto 0) );
    end component;

    component CPU
	     port( iCLK       : in  std_logic;
		        iRUN       : in  std_logic;
		        iRST       : in  std_logic;
			     iG_SH_val  : in  std_logic;
			     G0_WE      : in  std_logic;
			     G1_WE      : in  std_logic;
			 
			     oALU_SEL   : out std_logic_vector(1 downto 0);  
			     oSHG1_EN   : out std_logic;
			     oSHG0_EN   : out std_logic;
			     oG1_WE	   : out std_logic; 
              oG0_WE	   : out std_logic  );
    end component; 


-- ALU signals
    signal sALU_Sel   : std_logic_vector(1 downto 0); 
    signal salu_res   : std_logic_vector(15 downto 0); 	 
    signal sCarry     : std_logic;	
	 
-- SHIFT registers	 
--G1 and G0

	 signal sSerOutG1	  : std_logic;
	 signal sSerOutG0	  : std_logic;
	 signal sSerInG0 	  : std_logic;
	 signal sG1         : std_logic_vector(15 downto 0);	
	 signal sG0         : std_logic_vector(15 downto 0);
	 signal s_SHG0_EN   : std_logic;
	 signal s_SHG1_EN   : std_logic;
    signal s_SHG_EN    : std_logic_vector(1 downto 0);	 
	 signal sG0_WE	     : std_logic;
	 signal sG1_WE	     : std_logic;

begin

Inst_ALU:
    ALU 
	 port map( iX      => iA,
		        iY      => sG1,
		        iSel    => sALU_SEL,
		        oCarry  => sCarry,
		        oResult => sALU_res );	


Inst_SH_REG_G1: 
    SH_REG 
	 generic map( bus_width => 16 )
	 port map( iCLK    => iCLK,
		        iRST    => iRST,
		        iData   => sALU_res,
		        iSerIn  => sCarry,
		        iWR_EN  => sG1_WE,
		        iSH_EN  => s_SHG1_EN,
		        oSerOut => sSerOutG1,
		        oPrlOut => sG1);

    s_SHG_EN <= s_SHG1_EN & s_SHG0_EN;
	 
    with s_SHG_EN select sSerInG0 <=
	     '0'       when "00",
	     '0'       when "01",
	     sSerOutG1 when "11",
	     '0'       when others;		  

		  
Inst_SH_REG_G0: 
    SH_REG 
	 generic map( bus_width => 16 )
	 port map( iCLK    => iCLK,
		        iRST    => iRST,
		        iData   => iB,
		        iSerIn  => sSerInG0,
		        iWR_EN  => sG0_WE,
		        iSH_EN  => s_SHG0_EN,
		        oSerOut => sSerOutG0,
		        oPrlOut => sG0);

oRes <= sG1 & sG0;

Inst_CPU: 
    CPU 
	 port map( iCLK       => iCLK,
		        iRST       => iRST,
				  iRUN       => iRUN,
				  G0_WE      => G0_WE,
			     G1_WE      => G1_WE,
		        iG_SH_val  => sSerOutG0,   
		        oALU_SEL   => sALU_SEL,
		        oSHG1_EN   => s_SHG1_EN,
			     oSHG0_EN   => s_SHG0_EN,
		        oG1_WE     => sG1_WE,
		        oG0_WE     => sG0_WE);
				  
end Behavioral;

