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
			 iSel: in  std_logic_vector(2 downto 0);
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
		  iA           when "000",
		  iA           when "001",
		  iA           when "010",
		  iA           when "011",
		  iA           when "100",
		  iA           when "101",
		  iA           when "110",
		  '0'          when "111",		  
	     iA           when others;
	 
    with iSel select siB  <=
	     '0'          when "000",
		  '1'          when "001",
		  '0'          when "010",
		  not(iB)      when "011",
		  iB           when "100",
		  not(iB)      when "101",
		  iB           when "110",
		  '0'          when "111",		  
	     iB           when others;
		  
    with iSel select siC  <=
	     '0'          when "000",
		  '0'          when "001",
		  '1'          when "010",
		  '1'          when "011",
		  '0'          when "100",
		  '0'          when "101",
		  '1'          when "110",
		  '0'          when "111",		  
	     '0'          when others;
				
Inst_fullAdder:
    fullAdder
    port map( iA   => siA,
		        iB   => siB,
		        iC   => siC,
		        oFnc => soFnc,
		        oC   => soC);	 
				  
    with iSel select oFnc <=
	     soFnc         when "000",
		  soFnc         when "001",
	     soFnc         when "010",
	     soFnc         when "011",
	     soFnc         when "100",
		  soFnc         when "101",
	     soFnc         when "110",
	     '0'           when "111",			  
        '0'           when others;		  

    with iSel select oC  <=
	     soC           when "000",
		  soC           when "001",
	     soC           when "010",
	     soC           when "011",
	     soC           when "100",
		  soC           when "101",
	     soC           when "110",
	     '0'           when "111",			  
        '0'           when others;		  

end dataFlow;


