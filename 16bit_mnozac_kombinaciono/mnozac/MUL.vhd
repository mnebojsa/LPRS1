----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:09 11/28/2018 
-- Design Name: 
-- Module Name:    MUL - Behavioral 
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

entity MUL is
    generic( bus_width : integer := 16 );
				 
    port( iX      : in  std_logic_vector(   bus_width-1 downto 0);
	       iY      : in  std_logic_vector(   bus_width-1 downto 0);
			 oResult : out std_logic_vector(2*bus_width -1 downto 0) );
   
end MUL;

architecture RTL of MUL is
    
    component nBitAdder
	 generic(BitNum : integer);
    port( iL     : in  std_logic_vector(BitNum-1 downto 0);
		    iCarry : in  std_logic;          
		    oRes   : out std_logic;
		    oCarry : out std_logic );
    end component;

    component fullAdder
	PORT( iA   : IN std_logic;
		   iB   : IN std_logic;
		   iC   : IN std_logic;          
		   oFnc : OUT std_logic;
		   oC   : OUT std_logic);
    end component;
	 
	 signal sRes   : std_logic_vector(2*bus_width -1 downto 0); 

--Level 0 signals	 
	 signal sL0    : std_logic;
	 signal sCarry0: std_logic;
--Level 1 signals		 
	 signal sL1    : std_logic_vector(1 downto 0);
	 signal sCarry1: std_logic;
--Level 2 signals		 
	 signal sL2    : std_logic_vector(2 downto 0);	
	 signal sCarry2: std_logic;		 

--Level 3 signals		 
	 signal sL3    : std_logic_vector(3 downto 0);	
	 signal sCarry3: std_logic;		 
	
--Level 4 signals		 
	 signal sL4    : std_logic_vector(4 downto 0);	
	 signal sCarry4: std_logic;		 
	
--Level 5 signals		 
	 signal sL5    : std_logic_vector(5 downto 0);	
	 signal sCarry5: std_logic;		 
	 
--Level 6 signals		 
	 signal sL6    : std_logic_vector(6 downto 0);	
	 signal sCarry6: std_logic;		 
	 
--Level 7 signals		 
	 signal sL7    : std_logic_vector(7 downto 0);	
	 signal sCarry7: std_logic;		 

--Level 8 signals		 
	 signal sL8    : std_logic_vector(8 downto 0);	
	 signal sCarry8: std_logic;		 
	 
--Level 9 signals		 
	 signal sL9    : std_logic_vector(9 downto 0);	
	 signal sCarry9: std_logic;		 
	 
--Level 10 signals		 
	 signal sL10    : std_logic_vector(10 downto 0);	
	 signal sCarry10: std_logic;		 
	 
--Level 11 signals		 
	 signal sL11    : std_logic_vector(11 downto 0);	
	 signal sCarry11: std_logic;		 

--Level 12 signals		 
	 signal sL12    : std_logic_vector(12 downto 0);	
	 signal sCarry12: std_logic;		 

--Level 13 signals		 
	 signal sL13    : std_logic_vector(13 downto 0);	
	 signal sCarry13: std_logic;		 
	 
--Level 14 signals		 
	 signal sL14    : std_logic_vector(14 downto 0);	
	 signal sCarry14: std_logic;		 
	 
--Level 15 signals		 
	 signal sL15    : std_logic_vector(15 downto 0);	
	 signal sCarry15: std_logic;		 

--Level 16 signals		 
	 signal sL16    : std_logic_vector(14 downto 0);	
	 signal sCarry16: std_logic;		 

--Level 17 signals		 
	 signal sL17    : std_logic_vector(13 downto 0);	
	 signal sCarry17: std_logic;		 
 	 
--Level 18 signals		 
	 signal sL18    : std_logic_vector(12 downto 0);	
	 signal sCarry18: std_logic;		 
  
--Level 19 signals		 
	 signal sL19    : std_logic_vector(11 downto 0);	
	 signal sCarry19: std_logic;		 
 
--Level 20 signals		 
	 signal sL20    : std_logic_vector(10 downto 0);	
	 signal sCarry20: std_logic;		 
 
--Level 21 signals		 
	 signal sL21    : std_logic_vector(9 downto 0);	
	 signal sCarry21: std_logic;		 
 
--Level 22 signals		 
	 signal sL22    : std_logic_vector(8 downto 0);	
	 signal sCarry22: std_logic;		 
 
--Level 23 signals		 
	 signal sL23    : std_logic_vector(7 downto 0);	
	 signal sCarry23: std_logic;		 

--Level 24 signals		 
	 signal sL24    : std_logic_vector(6 downto 0);	
	 signal sCarry24: std_logic;		 

--Level 25 signals		 
	 signal sL25    : std_logic_vector(5 downto 0);	
    signal sCarry25: std_logic;		 

--Level 26 signals		 
	 signal sL26    : std_logic_vector(4 downto 0);	
	 signal sCarry26: std_logic;		 

--Level 27 signals		 
	 signal sL27    : std_logic_vector(3 downto 0);	
	 signal sCarry27: std_logic;		 

--Level 28 signals		 
	 signal sL28    : std_logic_vector(2 downto 0);	
	 signal sCarry28: std_logic;		 

--Level 29 signals		 
	 signal sL29    : std_logic_vector(1 downto 0);	
	 signal sCarry29: std_logic;		 
 
--Level 30 signals		 
	 signal sL30    : std_logic;	
	 signal sCarry30: std_logic;		 

--Level 31 signals		 
	 signal sL31    : std_logic;
 
begin

--Level 0
    sL0     <= iX(0) and iY(0);

    sRes(0) <= sL0;
	 sCarry0 <= '0';
	 
--Level 1
    sL1(0) <= iX(0) and iY(1);
    sL1(1) <= iX(1) and iY(0);
	 	 
Inst_nBitAdder_L1: 
    nBitAdder 
	 generic map( BitNum => 2 )
	 port map   ( iL     => sL1,
		           iCarry => sCarry0,
		           oRes   => sRes(1),
		           oCarry => sCarry1 );	 	
--Level 2

    sL2(0) <= iX(0) and iY(2);
    sL2(1) <= iX(1) and iY(1);
    sL2(2) <= iX(2) and iY(0);
	 					
Inst_nBitAdder_L2: 
    nBitAdder 
	 generic map( BitNum => 3 )
	 port map   ( iL     => sL2,
		           iCarry => sCarry1,
		           oRes   => sRes(2),
		           oCarry => sCarry2 );	  
 
--Level 3

    sL3(0) <= iX(0) and iY(3);
    sL3(1) <= iX(1) and iY(2);
    sL3(2) <= iX(2) and iY(1);
    sL3(3) <= iX(3) and iY(0);
	 					
Inst_nBitAdder_L3: 
    nBitAdder 
	 generic map( BitNum => 4 )
	 port map   ( iL     => sL3,
		           iCarry => sCarry2,
		           oRes   => sRes(3),
		           oCarry => sCarry3 );	 

--Level 4

    sL4(0) <= iX(0) and iY(4);
    sL4(1) <= iX(1) and iY(3);
    sL4(2) <= iX(2) and iY(2);
    sL4(3) <= iX(3) and iY(1);
	 sL4(4) <= iX(4) and iY(0);

Inst_nBitAdder_L4: 
    nBitAdder 
	 generic map( BitNum => 5 )
	 port map   ( iL     => sL4,
		           iCarry => sCarry3,
		           oRes   => sRes(4),
		           oCarry => sCarry4 );

--Level 5
    sL5(0) <= iX(0) and iY(5);
    sL5(1) <= iX(1) and iY(4);
    sL5(2) <= iX(2) and iY(3);
    sL5(3) <= iX(3) and iY(2);
	 sL5(4) <= iX(4) and iY(1);
	 sL5(5) <= iX(5) and iY(0);
				
Inst_nBitAdder_L5: 
    nBitAdder 
	 generic map( BitNum => 6 )
	 port map   ( iL     => sL5,
		           iCarry => sCarry4,
		           oRes   => sRes(5),
		           oCarry => sCarry5 );

--Level 6
    sL6(0) <= iX(0) and iY(6);
    sL6(1) <= iX(1) and iY(5);
    sL6(2) <= iX(2) and iY(4);
    sL6(3) <= iX(3) and iY(3);
	 sL6(4) <= iX(4) and iY(2);
	 sL6(5) <= iX(5) and iY(1);
	 sL6(6) <= iX(6) and iY(0);
	 
Inst_nBitAdder_L6: 
    nBitAdder 
	 generic map( BitNum => 7 )
	 port map   ( iL     => sL6,
		           iCarry => sCarry5,
		           oRes   => sRes(6),
		           oCarry => sCarry6 );					
					
--Level 7
    sL7(0) <= iX(0) and iY(7);
    sL7(1) <= iX(1) and iY(6);
    sL7(2) <= iX(2) and iY(5);
    sL7(3) <= iX(3) and iY(4);
	 sL7(4) <= iX(4) and iY(3);
	 sL7(5) <= iX(5) and iY(2);
	 sL7(6) <= iX(6) and iY(1);
	 sL7(7) <= iX(7) and iY(0);
	 
Inst_nBitAdder_L7: 
    nBitAdder 
	 generic map( BitNum => 8 )
	 port map   ( iL     => sL7,
		           iCarry => sCarry6,
		           oRes   => sRes(7),
		           oCarry => sCarry7 );					

--Level 8

    sL8(0) <= iX(0) and iY(8);
    sL8(1) <= iX(1) and iY(7);
    sL8(2) <= iX(2) and iY(6);
    sL8(3) <= iX(3) and iY(5);
	 sL8(4) <= iX(4) and iY(4);
	 sL8(5) <= iX(5) and iY(3);
	 sL8(6) <= iX(6) and iY(2);
	 sL8(7) <= iX(7) and iY(1);
	 sL8(8) <= iX(8) and iY(0);
	 
Inst_nBitAdder_L8: 
    nBitAdder 
	 generic map( BitNum => 9 )
	 port map   ( iL     => sL8,
		           iCarry => sCarry7,
		           oRes   => sRes(8),
		           oCarry => sCarry8 );

--Level 9
 
    sL9(0) <= iX(0) and iY(9);
    sL9(1) <= iX(1) and iY(8);
    sL9(2) <= iX(2) and iY(7);
    sL9(3) <= iX(3) and iY(6);
	 sL9(4) <= iX(4) and iY(5);
	 sL9(5) <= iX(5) and iY(4);
	 sL9(6) <= iX(6) and iY(3);
	 sL9(7) <= iX(7) and iY(2);
	 sL9(8) <= iX(8) and iY(1);
	 sL9(9) <= iX(9) and iY(0);
	 
Inst_nBitAdder_L9: 
    nBitAdder 
	 generic map( BitNum => 10 )
	 port map   ( iL     => sL9,
		           iCarry => sCarry8,
		           oRes   => sRes(9),
		           oCarry => sCarry9 );

--Level 10
 
    sL10(0) <= iX( 0) and iY(10);
    sL10(1) <= iX( 1) and iY( 9);
    sL10(2) <= iX( 2) and iY( 8);
    sL10(3) <= iX( 3) and iY( 7);
	 sL10(4) <= iX( 4) and iY( 6);
	 sL10(5) <= iX( 5) and iY( 5);
	 sL10(6) <= iX( 6) and iY( 4);
	 sL10(7) <= iX( 7) and iY( 3);
	 sL10(8) <= iX( 8) and iY( 2);
	 sL10(9) <= iX( 9) and iY( 1);
	 sL10(10)<= iX(10) and iY( 0);
	 
Inst_nBitAdder_L10: 
    nBitAdder 
	 generic map( BitNum => 11 )
	 port map   ( iL     => sL10,
		           iCarry => sCarry9,
		           oRes   => sRes(10),
		           oCarry => sCarry10 );

--Level 11
 
    sL11(0) <= iX( 0) and iY(11);
    sL11(1) <= iX( 1) and iY(10);
    sL11(2) <= iX( 2) and iY( 9);
    sL11(3) <= iX( 3) and iY( 8);
	 sL11(4) <= iX( 4) and iY( 7);
	 sL11(5) <= iX( 5) and iY( 6);
	 sL11(6) <= iX( 6) and iY( 5);
	 sL11(7) <= iX( 7) and iY( 4);
	 sL11(8) <= iX( 8) and iY( 3);
	 sL11(9) <= iX( 9) and iY( 2);
	 sL11(10)<= iX(10) and iY( 1);
	 sL11(11)<= iX(11) and iY( 0);
	 
Inst_nBitAdder_L11: 
    nBitAdder 
	 generic map( BitNum => 12 )
	 port map   ( iL     => sL11,
		           iCarry => sCarry10,
		           oRes   => sRes(11),
		           oCarry => sCarry11 );

--Level 12
 
    sL12(0) <= iX( 0) and iY(12);
    sL12(1) <= iX( 1) and iY(11);
    sL12(2) <= iX( 2) and iY(10);
    sL12(3) <= iX( 3) and iY( 9);
	 sL12(4) <= iX( 4) and iY( 8);
	 sL12(5) <= iX( 5) and iY( 7);
	 sL12(6) <= iX( 6) and iY( 6);
	 sL12(7) <= iX( 7) and iY( 5);
	 sL12(8) <= iX( 8) and iY( 4);
	 sL12(9) <= iX( 9) and iY( 3);
	 sL12(10)<= iX(10) and iY( 2);
	 sL12(11)<= iX(11) and iY( 1);
	 sL12(12)<= iX(12) and iY( 0);
	 
Inst_nBitAdder_L12: 
    nBitAdder 
	 generic map( BitNum => 13 )
	 port map   ( iL     => sL12,
		           iCarry => sCarry11,
		           oRes   => sRes(12),
		           oCarry => sCarry12 );
					  
					  
--Level 13
 
    sL13(0) <= iX( 0) and iY(13);
    sL13(1) <= iX( 1) and iY(12);
    sL13(2) <= iX( 2) and iY(11);
    sL13(3) <= iX( 3) and iY(10);
	 sL13(4) <= iX( 4) and iY( 9);
	 sL13(5) <= iX( 5) and iY( 8);
	 sL13(6) <= iX( 6) and iY( 7);
	 sL13(7) <= iX( 7) and iY( 6);
	 sL13(8) <= iX( 8) and iY( 5);
	 sL13(9) <= iX( 9) and iY( 4);
	 sL13(10)<= iX(10) and iY( 3);
	 sL13(11)<= iX(11) and iY( 2);
	 sL13(12)<= iX(12) and iY( 1);
	 sL13(13)<= iX(13) and iY( 0);
	 
Inst_nBitAdder_L13: 
    nBitAdder 
	 generic map( BitNum => 14 )
	 port map   ( iL     => sL13,
		           iCarry => sCarry12,
		           oRes   => sRes(13),
		           oCarry => sCarry13 );					  

--Level 14
 
    sL14(0) <= iX( 0) and iY(14);
    sL14(1) <= iX( 1) and iY(13);
    sL14(2) <= iX( 2) and iY(12);
    sL14(3) <= iX( 3) and iY(11);
	 sL14(4) <= iX( 4) and iY(10);
	 sL14(5) <= iX( 5) and iY( 9);
	 sL14(6) <= iX( 6) and iY( 8);
	 sL14(7) <= iX( 7) and iY( 7);
	 sL14(8) <= iX( 8) and iY( 6);
	 sL14(9) <= iX( 9) and iY( 5);
	 sL14(10)<= iX(10) and iY( 4);
	 sL14(11)<= iX(11) and iY( 3);
	 sL14(12)<= iX(12) and iY( 2);
	 sL14(13)<= iX(13) and iY( 1);
	 sL14(14)<= iX(14) and iY( 0);
	 
Inst_nBitAdder_L14: 
    nBitAdder 
	 generic map( BitNum => 15 )
	 port map   ( iL     => sL14,
		           iCarry => sCarry13,
		           oRes   => sRes(14),
		           oCarry => sCarry14 );	

--Level 15
 
    sL15(0) <= iX( 0) and iY(15);
    sL15(1) <= iX( 1) and iY(14);
    sL15(2) <= iX( 2) and iY(13);
    sL15(3) <= iX( 3) and iY(12);
	 sL15(4) <= iX( 4) and iY(11);
	 sL15(5) <= iX( 5) and iY(10);
	 sL15(6) <= iX( 6) and iY( 9);
	 sL15(7) <= iX( 7) and iY( 8);
	 sL15(8) <= iX( 8) and iY( 7);
	 sL15(9) <= iX( 9) and iY( 6);
	 sL15(10)<= iX(10) and iY( 5);
	 sL15(11)<= iX(11) and iY( 4);
	 sL15(12)<= iX(12) and iY( 3);
	 sL15(13)<= iX(13) and iY( 2);
	 sL15(14)<= iX(14) and iY( 1);
	 sL15(15)<= iX(15) and iY( 0);
	 
Inst_nBitAdder_L15: 
    nBitAdder 
	 generic map( BitNum => 16 )
	 port map   ( iL     => sL15,
		           iCarry => sCarry14,
		           oRes   => sRes(15),
		           oCarry => sCarry15 );	

--Level 16
 
    sL16(0) <= iX( 1) and iY(15);
    sL16(1) <= iX( 2) and iY(14);
    sL16(2) <= iX( 3) and iY(13);
    sL16(3) <= iX( 4) and iY(12);
	 sL16(4) <= iX( 5) and iY(11);
	 sL16(5) <= iX( 6) and iY(10);
	 sL16(6) <= iX( 7) and iY( 9);
	 sL16(7) <= iX( 8) and iY( 8);
	 sL16(8) <= iX( 9) and iY( 7);
	 sL16(9) <= iX(10) and iY( 6);
	 sL16(10)<= iX(11) and iY( 5);
	 sL16(11)<= iX(12) and iY( 4);
	 sL16(12)<= iX(13) and iY( 3);
	 sL16(13)<= iX(14) and iY( 2);
	 sL16(14)<= iX(15) and iY( 1);
	 
Inst_nBitAdder_L16: 
    nBitAdder 
	 generic map( BitNum => 15 )
	 port map   ( iL     => sL16,
		           iCarry => sCarry15,
		           oRes   => sRes(16),
		           oCarry => sCarry16 );
					  
--Level 17
 
    sL17(0) <= iX( 2) and iY(15);
    sL17(1) <= iX( 3) and iY(14);
    sL17(2) <= iX( 4) and iY(13);
    sL17(3) <= iX( 5) and iY(12);
	 sL17(4) <= iX( 6) and iY(11);
	 sL17(5) <= iX( 7) and iY(10);
	 sL17(6) <= iX( 8) and iY( 9);
	 sL17(7) <= iX( 9) and iY( 8);
	 sL17(8) <= iX(10) and iY( 7);
	 sL17(9) <= iX(11) and iY( 6);
	 sL17(10)<= iX(12) and iY( 5);
	 sL17(11)<= iX(13) and iY( 4);
	 sL17(12)<= iX(14) and iY( 3);
	 sL17(13)<= iX(15) and iY( 2);
	 
Inst_nBitAdder_L17: 
    nBitAdder 
	 generic map( BitNum => 14 )
	 port map   ( iL     => sL17,
		           iCarry => sCarry16,
		           oRes   => sRes(17),
		           oCarry => sCarry17 );	

--Level 18
 
    sL18(0) <= iX( 3) and iY(15);
    sL18(1) <= iX( 4) and iY(14);
    sL18(2) <= iX( 5) and iY(13);
    sL18(3) <= iX( 6) and iY(12);
	 sL18(4) <= iX( 7) and iY(11);
	 sL18(5) <= iX( 8) and iY(10);
	 sL18(6) <= iX( 9) and iY( 9);
	 sL18(7) <= iX(10) and iY( 8);
	 sL18(8) <= iX(11) and iY( 7);
	 sL18(9) <= iX(12) and iY( 6);
	 sL18(10)<= iX(13) and iY( 5);
	 sL18(11)<= iX(14) and iY( 4);
	 sL18(12)<= iX(15) and iY( 3);
	 
Inst_nBitAdder_L18: 
    nBitAdder 
	 generic map( BitNum => 13 )
	 port map   ( iL     => sL18,
		           iCarry => sCarry17,
		           oRes   => sRes(18),
		           oCarry => sCarry18 );


--Level 19
 
    sL19(0) <= iX( 4) and iY(15);
    sL19(1) <= iX( 5) and iY(14);
    sL19(2) <= iX( 6) and iY(13);
    sL19(3) <= iX( 7) and iY(12);
	 sL19(4) <= iX( 8) and iY(11);
	 sL19(5) <= iX( 9) and iY(10);
	 sL19(6) <= iX(10) and iY( 9);
	 sL19(7) <= iX(11) and iY( 8);
	 sL19(8) <= iX(12) and iY( 7);
	 sL19(9) <= iX(13) and iY( 6);
	 sL19(10)<= iX(14) and iY( 5);
	 sL19(11)<= iX(15) and iY( 4);
	 
Inst_nBitAdder_L19: 
    nBitAdder 
	 generic map( BitNum => 12 )
	 port map   ( iL     => sL19,
		           iCarry => sCarry18,
		           oRes   => sRes(19),
		           oCarry => sCarry19 );

--Level 20
 
    sL20(0) <= iX( 5) and iY(15);
    sL20(1) <= iX( 6) and iY(14);
    sL20(2) <= iX( 7) and iY(13);
    sL20(3) <= iX( 8) and iY(12);
	 sL20(4) <= iX( 9) and iY(11);
	 sL20(5) <= iX(10) and iY(10);
	 sL20(6) <= iX(11) and iY( 9);
	 sL20(7) <= iX(12) and iY( 8);
	 sL20(8) <= iX(13) and iY( 7);
	 sL20(9) <= iX(14) and iY( 6);
	 sL20(10)<= iX(15) and iY( 5);
	 
Inst_nBitAdder_L20: 
    nBitAdder 
	 generic map( BitNum => 11 )
	 port map   ( iL     => sL20,
		           iCarry => sCarry19,
		           oRes   => sRes(20),
		           oCarry => sCarry20 );

--Level 21
 
    sL21(0) <= iX( 6) and iY(15);
    sL21(1) <= iX( 7) and iY(14);
    sL21(2) <= iX( 8) and iY(13);
    sL21(3) <= iX( 9) and iY(12);
	 sL21(4) <= iX(10) and iY(11);
	 sL21(5) <= iX(11) and iY(10);
	 sL21(6) <= iX(12) and iY( 9);
	 sL21(7) <= iX(13) and iY( 8);
	 sL21(8) <= iX(14) and iY( 7);
	 sL21(9) <= iX(15) and iY( 6);

	 
Inst_nBitAdder_L21: 
    nBitAdder 
	 generic map( BitNum => 10 )
	 port map   ( iL     => sL21,
		           iCarry => sCarry20,
		           oRes   => sRes(21),
		           oCarry => sCarry21 );

--Level 22
 
    sL22(0) <= iX( 7) and iY(15);
    sL22(1) <= iX( 8) and iY(14);
    sL22(2) <= iX( 9) and iY(13);
    sL22(3) <= iX(10) and iY(12);
	 sL22(4) <= iX(11) and iY(11);
	 sL22(5) <= iX(12) and iY(10);
	 sL22(6) <= iX(13) and iY( 9);
	 sL22(7) <= iX(14) and iY( 8);
	 sL22(8) <= iX(15) and iY( 7);

	 
Inst_nBitAdder_L22: 
    nBitAdder 
	 generic map( BitNum => 9 )
	 port map   ( iL     => sL22,
		           iCarry => sCarry21,
		           oRes   => sRes(22),
		           oCarry => sCarry22 );


--Level 23
 
    sL23(0) <= iX( 8) and iY(15);
    sL23(1) <= iX( 9) and iY(14);
    sL23(2) <= iX(10) and iY(13);
    sL23(3) <= iX(11) and iY(12);
	 sL23(4) <= iX(12) and iY(11);
	 sL23(5) <= iX(13) and iY(10);
	 sL23(6) <= iX(14) and iY( 9);
	 sL23(7) <= iX(15) and iY( 8);

	 
Inst_nBitAdder_L23: 
    nBitAdder 
	 generic map( BitNum => 8 )
	 port map   ( iL     => sL23,
		           iCarry => sCarry22,
		           oRes   => sRes(23),
		           oCarry => sCarry23 );


--Level 24
 
    sL24(0) <= iX( 9) and iY(15);
    sL24(1) <= iX(10) and iY(14);
    sL24(2) <= iX(11) and iY(13);
    sL24(3) <= iX(12) and iY(12);
	 sL24(4) <= iX(13) and iY(11);
	 sL24(5) <= iX(14) and iY(10);
	 sL24(6) <= iX(15) and iY( 9);
	 
Inst_nBitAdder_L24: 
    nBitAdder 
	 generic map( BitNum => 7 )
	 port map   ( iL     => sL24,
		           iCarry => sCarry23,
		           oRes   => sRes(24),
		           oCarry => sCarry24 );


--Level 25
 
    sL25(0) <= iX(10) and iY(15);
    sL25(1) <= iX(12) and iY(14);
    sL25(2) <= iX(12) and iY(13);
    sL25(3) <= iX(13) and iY(12);
	 sL25(4) <= iX(14) and iY(11);
	 sL25(5) <= iX(15) and iY(10);

	 
Inst_nBitAdder_L25: 
    nBitAdder 
	 generic map( BitNum => 6 )
	 port map   ( iL     => sL25,
		           iCarry => sCarry24,
		           oRes   => sRes(25),
		           oCarry => sCarry25 );

--Level 26
 
    sL26(0) <= iX(11) and iY(15);
    sL26(1) <= iX(12) and iY(14);
    sL26(2) <= iX(13) and iY(13);
    sL26(3) <= iX(14) and iY(12);
	 sL26(4) <= iX(15) and iY(11);

	 
Inst_nBitAdder_L26: 
    nBitAdder 
	 generic map( BitNum => 5 )
	 port map   ( iL     => sL26,
		           iCarry => sCarry25,
		           oRes   => sRes(26),
		           oCarry => sCarry26 );


--Level 27
 
    sL27(0) <= iX(12) and iY(15);
    sL27(1) <= iX(13) and iY(14);
    sL27(2) <= iX(14) and iY(13);
    sL27(3) <= iX(15) and iY(12);

Inst_nBitAdder_L27: 
    nBitAdder 
	 generic map( BitNum => 4 )
	 port map   ( iL     => sL27,
		           iCarry => sCarry26,
		           oRes   => sRes(27),
		           oCarry => sCarry27 );


--Level 28
 
    sL28(0) <= iX(13) and iY(15);
    sL28(1) <= iX(14) and iY(14);
    sL28(2) <= iX(15) and iY(13);

Inst_nBitAdder_L28: 
    nBitAdder 
	 generic map( BitNum => 3 )
	 port map   ( iL     => sL28,
		           iCarry => sCarry27,
		           oRes   => sRes(28),
		           oCarry => sCarry28 );

--Level 29
 
    sL29(0) <= iX(14) and iY(15);
    sL29(1) <= iX(15) and iY(14);

Inst_nBitAdder_L29: 
    nBitAdder 
	 generic map( BitNum => 2 )
	 port map   ( iL     => sL29,
		           iCarry => sCarry28,
		           oRes   => sRes(29),
		           oCarry => sCarry29 );

--Level 30
 
    sL30 <= iX(15) and iY(15);

Inst_fullAdder:
    fullAdder
	 port map( iA   => sL30,
		        iB   => '0',
		        iC   => sCarry29,
		        oFnc => sRes(30),
		        oC   => sCarry30 );	

--Level 31	 
	 sL31 <= sCarry30;
 
    sRes(31) <= sL31; 

-- Output	
    oResult <= sRes;  	

end RTL;