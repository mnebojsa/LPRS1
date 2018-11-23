----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:59 12/04/2018 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    generic( bus_width : integer := 16;
             selSigNum : integer := 2 );
				 
    port( iX      : in  std_logic_vector(bus_width-1 downto 0);
	       iY      : in  std_logic_vector(bus_width-1 downto 0);
			 iSel    : in  std_logic_vector(selSigNum-1 downto 0);
			 oCarry  : out std_logic;
			 oResult : out std_logic_vector(bus_width-1 downto 0) );
   
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

    signal soFnc  : std_logic_vector(15 downto 0);
    signal sCarry : std_logic_vector(16 downto 0) := (others => '0'); 
begin

    with iSel(1 downto 0) select sCarry(0) <=
        '0'    when "00",
		  '1'    when "01",
		  '0'    when others;

GEN_ALCell: 
    for I in 0 to 15 generate
      ALC : ALCell 
		port map(iA   => iX(I),
		         iB   => iY(I),
		         iC   => sCarry(I),
		         iSel => iSel,
		         oFnc => soFnc(I),
		         oC   => sCarry(I+1) );
      end generate GEN_ALCell;	

    oCarry <= sCarry(16);
    oResult <= soFnc;
	
end RTL;


