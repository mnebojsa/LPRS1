----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:02 11/14/2018 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    port( iCLK    : in  std_logic;
	       iA      : in  std_logic_vector(4 downto 0);
          iB      : in  std_logic_vector(4 downto 0);
          iSelAdd : in  std_logic;
          iSelSub : in  std_logic;
          oH      : out std_logic_vector(4 downto 0) );
end top;

architecture Behavioral of top is

    component CU
	 port( iCLK    : in  std_logic;
		    iSelAdd : in  std_logic;
		    iSelSub : in  std_logic;
		    iA      : in  std_logic_vector(4 downto 0);
		    iB      : in  std_logic_vector(4 downto 0);
		    iC      : in  std_logic;          
		    oA      : out std_logic_vector(4 downto 0);
		    oB      : out std_logic_vector(4 downto 0);
		    oOper   : out std_logic_vector(2 downto 0) );
    end component;
	 
    component ALU
	 port( iSel : in  std_logic_vector(4 downto 0);
		    iA   : in  std_logic_vector(3 downto 0);
		    iB   : in  std_logic_vector(3 downto 0);          
		    oH   : out std_logic_vector(3 downto 0);
		    oC   : out std_logic );
    end component;	 

    signal soA    : std_logic_vector(4 downto 0);
    signal soB    : std_logic_vector(4 downto 0);
    signal soC    : std_logic_vector(4 downto 0);
    signal soOper : std_logic_vector(4 downto 0);	 
    signal sCarry : std_logic;
begin

Inst_CU:
    CU
	 port map( iCLK    => iCLK,
		        iSelAdd => iSelAdd,
		        iSelSub => iSelSub,
		        iA      => iA,
		        iB      => iB,
		        iC      => sCarry,
		        oA      => soA,
		        oB      => soB,
		        oOper   => soOper(2 downto 0));

soOper(4 downto 3) <= "11";
				  
Inst_ALU:
    ALU
	 port map( iSel => soOper,
		        iA   => soA(3 downto 0),
		        iB   => soB(3 downto 0),
		        oH   => oH(3 downto 0),
		        oC   => sCarry);

    oH(4) <= sCarry;
end Behavioral;



