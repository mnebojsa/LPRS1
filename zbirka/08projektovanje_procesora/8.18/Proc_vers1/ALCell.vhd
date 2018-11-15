----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:24:31 11/08/2018 
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
			 iSel: in  std_logic_vector(1 downto 0);
			 oFnc: out std_logic;
			 oC  : out std_logic );
end ALCell;

architecture dataFlow of ALCell is


    component fullAdder
	     port( iA   : in std_logic;
		        iB   : in std_logic;
		        iC   : in std_logic;          
		        oFnc : out std_logic;
		        oC   : out std_logic );
    end component;

    signal soC   : std_logic;
	 signal soFnc : std_logic;
	 signal siA   : std_logic;
	 signal siB   : std_logic;
	 signal siC   : std_logic;

begin

	 with iSel select siA  <=
		  iA           when "00",
		  iA           when "01",
		  iA           when "10",	  
	     '0'          when others;
	 
    with iSel select siB  <= 
		  iB           when "00",
		  not(iB)      when "01",
		  iB           when "10",		  
		  '0'          when others;
		  
    with iSel select siC  <=
		  '1'           when "01",		  
	     '0'          when others;
				
Inst_fullAdder:
    fullAdder
    port map( iA   => siA,
		        iB   => siB,
		        iC   => siC,
		        oFnc => soFnc,
		        oC   => soC);	 
				  
    with iSel select oFnc <=
	     soFnc         when "00",
		  soFnc         when "01",
	     not(soFnc)    when "10",			  
        '0'           when others;		  

    with iSel select oC  <=
	     soC           when "00",
		  soC           when "01",
	     soC           when "10",	  
        '0'           when others;		  

end dataFlow;
