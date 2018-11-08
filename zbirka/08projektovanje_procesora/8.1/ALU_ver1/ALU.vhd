----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:40 11/08/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    port( iSel : in  std_logic_vector(3 downto 0);
	       iA   : in  std_logic_vector(3 downto 0);
			 iB   : in  std_logic_vector(3 downto 0);
			 oH   : out std_logic_vector(3 downto 0);
          oC   : out std_logic );
end ALU;

architecture RTL of ALU is
	
    component ALCell
	     port( iA   : in  std_logic;
		        iB   : in  std_logic;
		        iC   : in  std_logic;
		        iSel : in  std_logic_vector(1 downto 0);          
		        oFnc : out std_logic;
		        oC   : out std_logic );
    end component;

    component shift
	     port( iFnc : in  std_logic_vector(3 downto 0);
		        iSel : in  std_logic_vector(1 downto 0);          
		        oH   : out std_logic_vector(3 downto 0) );
    end component;

    signal soFnc  : std_logic_vector(3 downto 0);
    signal carry0 : std_logic;
	 signal carry1 : std_logic;
    signal carry2 : std_logic;
    signal carry3 : std_logic;	 
begin

    with iSel(1 downto 0) select carry0 <=
        '0'    when "00",
		  '1'    when "01",
		  '0'    when "10",
		  '0'    when "11";

Inst_ALCell0:
    ALCell
    port map( iA   => iA(0),
		        iB   => iB(0),
		        iC   => carry0,
		        iSel => iSel(1 downto 0),
		        oFnc => soFnc(0),
		        oC   => carry1);

Inst_ALCell1:
    ALCell
    port map( iA   => iA(1),
		        iB   => iB(1),
		        iC   => carry1,
		        iSel => iSel(1 downto 0),
		        oFnc => soFnc(1),
		        oC   => carry2);
	
Inst_ALCell2:
    ALCell
    port map( iA   => iA(2),
		        iB   => iB(2),
		        iC   => carry2,
		        iSel => iSel(1 downto 0),
		        oFnc => soFnc(2),
		        oC   => carry3);

Inst_ALCell3:
    ALCell
    port map( iA   => iA(3),
		        iB   => iB(3),
		        iC   => carry3,
		        iSel => iSel(1 downto 0),
		        oFnc => soFnc(3),
		        oC   => oC);

Inst_shift:
    shift 
    port map( iFnc => soFnc(3 downto 0),
		        iSel => iSel(3 downto 2),
		        oH   => oH );
	
end RTL;



