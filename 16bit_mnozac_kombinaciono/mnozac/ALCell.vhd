----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:02 11/28/2018 
-- Design Name: 
-- Module Name:    ALCell - Behavioral 
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

entity ALCell is
    port( iA  : in  std_logic;
	       iB  : in  std_logic;
			 iC  : in  std_logic;
			 oFnc: out std_logic;
			 oC  : out std_logic );
end ALCell;

architecture dataFlow of ALCell is


    component fullAdder
	     port( iA   : in  std_logic;
		        iB   : in  std_logic;
		        iC   : in  std_logic;          
		        oFnc : out std_logic;
		        oC   : out std_logic );
    end component;

    signal soC   : std_logic;
	 signal soFnc : std_logic;
	 signal siA   : std_logic;
	 signal siB   : std_logic;
	 signal siC   : std_logic;

begin

    siA  <= iA;
    siB  <= iB;	  
    siC  <= iC;
				
Inst_fullAdder:
    fullAdder
    port map( iA   => siA,
		        iB   => siB,
		        iC   => siC,
		        oFnc => soFnc,
		        oC   => soC);	  
		  
    oC   <= soC;
    oFnc <= soFnc;  

end dataFlow;