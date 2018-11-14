----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:59 11/13/2018 
-- Design Name: 
-- Module Name:    Proc_CU_top - Behavioral 
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

entity Proc_CU_top is
    port( iCLK  : in  std_logic;
	       iRSTn : in  std_logic;
			 iX    : in  std_logic;
			 iY    : in  std_logic;
	       oD    : out std_logic_vector(7 downto 0) );
end Proc_CU_top;

architecture Behavioral of Proc_CU_top is

    component dec3x8
	 port( iC : in  std_logic;
		    iB : in  std_logic;
		    iA : in  std_logic;
		    iE : in  std_logic;          
		    oD : out std_logic_vector(7 downto 0) );
    end component;
	 
    component CU
	 port( iCLK  : in  std_logic;
		    iRSTn : in  std_logic;
		    inJ   : in  std_logic_vector(2 downto 0);
		    inK   : in  std_logic_vector(2 downto 0);          
		    oQ    : out std_logic_vector(2 downto 0);
		    oQn   : out std_logic_vector(2 downto 0) );
    end component;	 

    signal siA     : std_logic;
    signal siB     : std_logic;
    signal siC     : std_logic;
    signal siE     : std_logic;	 
    signal soD     : std_logic_vector(7 downto 0);
    signal CU2DEC  : std_logic_vector(2 downto 0);
    signal CU2DECn : std_logic_vector(2 downto 0);
    signal sinJ    : std_logic_vector(2 downto 0);	
    signal sinK    : std_logic_vector(2 downto 0);	
	 
begin

Inst_dec3x8:
    dec3x8
	 port map( iC => siC,
		        iB => siB,
		        iA => siA,
		        iE => siE,
		        oD => soD);

    siE <= iRSTn;
	 oD <= soD;

    sinJ(0) <= (iX and soD(0)) or soD(2) or soD(4) or soD(6);
	 sinK(0) <=  '1';
	 
    sinJ(1) <=  soD(1)  or soD(4)   or soD(5);
	 sinK(1) <= (soD(2) and not(iY)) or soD(3) or soD(7);

    sinJ(2) <= (soD(2) and not(iY)) or soD(3) ;
    sinK(2) <=  soD(7);
	 
Inst_CU:
    CU
	 port map( iCLK  => iCLK,
		        iRSTn => iRSTn,
		        inJ   => sinJ,
		        inK   => sinK,
		        oQ    => CU2DEC,
		        oQn   => CU2DECn);
				  
    siC <= CU2DEC(2);
    siB <= CU2DEC(1);
    siA <= CU2DEC(0);	 	 	 
				  
end Behavioral;
