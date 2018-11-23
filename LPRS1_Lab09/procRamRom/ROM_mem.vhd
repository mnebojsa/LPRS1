----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:19 11/22/2018 
-- Design Name: 
-- Module Name:    ROM_mem - Behavioral 
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
use work.command_list.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_mem is
    port(  oDATA : out  std_logic_vector(11 downto 0);
           iADDR : in   std_logic_vector(15 downto 0)	);
end ROM_mem;

architecture Behavioral of ROM_mem is
    type t_Memory is array (0 to 108) of unsigned(11 downto 0);
    signal rom_Mem : t_Memory;


-----------------------------------------------------------------

constant mv6G0: std_logic_vector(11 downto 0) := MV   & R6 & G0;
constant mv5G0: std_logic_vector(11 downto 0) := MV   & R5 & G0;
constant mv4G0: std_logic_vector(11 downto 0) := MV   & R4 & G0;
constant mv3G0: std_logic_vector(11 downto 0) := MV   & R3 & G0;
constant mv2G0: std_logic_vector(11 downto 0) := MV   & R2 & G0;
constant mv1G0: std_logic_vector(11 downto 0) := MV   & R1 & G0;
constant mv0G0: std_logic_vector(11 downto 0) := MV   & R0 & G0;


constant mv70 : std_logic_vector(11 downto 0) := MV   & R7 & R0;

-----------------------------------------------------------------
													  
constant mvi00: std_logic_vector(11 downto 0) := MVI  & R0 & R0;
constant mvi11: std_logic_vector(11 downto 0) := MVI  & R1 & R1;
constant mvi22: std_logic_vector(11 downto 0) := MVI  & R2 & R2;
constant mvi33: std_logic_vector(11 downto 0) := MVI  & R3 & R3;
constant mvi44: std_logic_vector(11 downto 0) := MVI  & R4 & R4;
constant mvi55: std_logic_vector(11 downto 0) := MVI  & R5 & R5;
constant mvi66: std_logic_vector(11 downto 0) := MVI  & R6 & R6;
constant mvi77: std_logic_vector(11 downto 0) := MVI  & R7 & R7;

-----------------------------------------------------------------

constant ld00 : std_logic_vector(11 downto 0) := LOAD & R0 & R0;
constant ld11 : std_logic_vector(11 downto 0) := LOAD & R1 & R0;
constant ld22 : std_logic_vector(11 downto 0) := LOAD & R2 & R1;
constant ld33 : std_logic_vector(11 downto 0) := LOAD & R3 & R2;
constant ld44 : std_logic_vector(11 downto 0) := LOAD & R4 & R3;
constant ld55 : std_logic_vector(11 downto 0) := LOAD & R5 & R4;
constant ld66 : std_logic_vector(11 downto 0) := LOAD & R6 & R5;
constant ld77 : std_logic_vector(11 downto 0) := LOAD & R7 & R6;

-----------------------------------------------------------------

constant mul00: std_logic_vector(11 downto 0) := MUL  & R0 & R0;
constant mul01: std_logic_vector(11 downto 0) := MUL  & R0 & R1;
constant mul02: std_logic_vector(11 downto 0) := MUL  & R0 & R2;
constant mul03: std_logic_vector(11 downto 0) := MUL  & R0 & R3;
constant mul04: std_logic_vector(11 downto 0) := MUL  & R0 & R4;
constant mul05: std_logic_vector(11 downto 0) := MUL  & R0 & R5;
constant mul06: std_logic_vector(11 downto 0) := MUL  & R0 & R6;
constant mul07: std_logic_vector(11 downto 0) := MUL  & R0 & R7;

constant mul10: std_logic_vector(11 downto 0) := MUL  & R1 & R0;
constant mul11: std_logic_vector(11 downto 0) := MUL  & R1 & R1;
constant mul12: std_logic_vector(11 downto 0) := MUL  & R1 & R2;
constant mul13: std_logic_vector(11 downto 0) := MUL  & R1 & R3;
constant mul14: std_logic_vector(11 downto 0) := MUL  & R1 & R4;
constant mul15: std_logic_vector(11 downto 0) := MUL  & R1 & R5;
constant mul16: std_logic_vector(11 downto 0) := MUL  & R1 & R6;
constant mul17: std_logic_vector(11 downto 0) := MUL  & R1 & R7;

constant mul20: std_logic_vector(11 downto 0) := MUL  & R2 & R0;
constant mul21: std_logic_vector(11 downto 0) := MUL  & R2 & R1;
constant mul22: std_logic_vector(11 downto 0) := MUL  & R2 & R2;
constant mul23: std_logic_vector(11 downto 0) := MUL  & R2 & R3;
constant mul24: std_logic_vector(11 downto 0) := MUL  & R2 & R4;
constant mul25: std_logic_vector(11 downto 0) := MUL  & R2 & R5;
constant mul26: std_logic_vector(11 downto 0) := MUL  & R2 & R6;
constant mul27: std_logic_vector(11 downto 0) := MUL  & R2 & R7;

constant mul30: std_logic_vector(11 downto 0) := MUL  & R3 & R0;
constant mul31: std_logic_vector(11 downto 0) := MUL  & R3 & R1;
constant mul32: std_logic_vector(11 downto 0) := MUL  & R3 & R2;
constant mul33: std_logic_vector(11 downto 0) := MUL  & R3 & R3;
constant mul34: std_logic_vector(11 downto 0) := MUL  & R3 & R4;
constant mul35: std_logic_vector(11 downto 0) := MUL  & R3 & R5;
constant mul36: std_logic_vector(11 downto 0) := MUL  & R3 & R6;
constant mul37: std_logic_vector(11 downto 0) := MUL  & R3 & R7;

constant mul40: std_logic_vector(11 downto 0) := MUL  & R4 & R0;
constant mul41: std_logic_vector(11 downto 0) := MUL  & R4 & R1;
constant mul42: std_logic_vector(11 downto 0) := MUL  & R4 & R2;
constant mul43: std_logic_vector(11 downto 0) := MUL  & R4 & R3;
constant mul44: std_logic_vector(11 downto 0) := MUL  & R4 & R4;
constant mul45: std_logic_vector(11 downto 0) := MUL  & R4 & R5;
constant mul46: std_logic_vector(11 downto 0) := MUL  & R4 & R6;
constant mul47: std_logic_vector(11 downto 0) := MUL  & R4 & R7;

constant mul50: std_logic_vector(11 downto 0) := MUL  & R5 & R0;
constant mul51: std_logic_vector(11 downto 0) := MUL  & R5 & R1;
constant mul52: std_logic_vector(11 downto 0) := MUL  & R5 & R2;
constant mul53: std_logic_vector(11 downto 0) := MUL  & R5 & R3;
constant mul54: std_logic_vector(11 downto 0) := MUL  & R5 & R4;
constant mul55: std_logic_vector(11 downto 0) := MUL  & R5 & R5;
constant mul56: std_logic_vector(11 downto 0) := MUL  & R5 & R6;
constant mul57: std_logic_vector(11 downto 0) := MUL  & R5 & R7;

constant mul60: std_logic_vector(11 downto 0) := MUL  & R6 & R0;
constant mul61: std_logic_vector(11 downto 0) := MUL  & R6 & R1;
constant mul62: std_logic_vector(11 downto 0) := MUL  & R6 & R2;
constant mul63: std_logic_vector(11 downto 0) := MUL  & R6 & R3;
constant mul64: std_logic_vector(11 downto 0) := MUL  & R6 & R4;
constant mul65: std_logic_vector(11 downto 0) := MUL  & R6 & R5;
constant mul66: std_logic_vector(11 downto 0) := MUL  & R6 & R6;
constant mul67: std_logic_vector(11 downto 0) := MUL  & R6 & R7;

constant mul70: std_logic_vector(11 downto 0) := MUL  & R7 & R0;
constant mul71: std_logic_vector(11 downto 0) := MUL  & R7 & R1;
constant mul72: std_logic_vector(11 downto 0) := MUL  & R7 & R2;
constant mul73: std_logic_vector(11 downto 0) := MUL  & R7 & R3;
constant mul74: std_logic_vector(11 downto 0) := MUL  & R7 & R4;
constant mul75: std_logic_vector(11 downto 0) := MUL  & R7 & R5;
constant mul76: std_logic_vector(11 downto 0) := MUL  & R7 & R6;
constant mul77: std_logic_vector(11 downto 0) := MUL  & R7 & R7;

------------------------------------------------------------------

constant st70 : std_logic_vector(11 downto 0) := ST   & R7 & R0;
constant st52 : std_logic_vector(11 downto 0) := ST   & R5 & R2;
constant st43 : std_logic_vector(11 downto 0) := ST   & R4 & R3;


constant st0G0: std_logic_vector(11 downto 0) := ST   & R0 & G0;
constant st7G0: std_logic_vector(11 downto 0) := ST   & R7 & G0;
constant st71 : std_logic_vector(11 downto 0) := ST   & R7 & R1;
constant st61 : std_logic_vector(11 downto 0) := ST   & R6 & R1;
constant st51 : std_logic_vector(11 downto 0) := ST   & R5 & R1;
constant st41 : std_logic_vector(11 downto 0) := ST   & R4 & R1;
constant st31 : std_logic_vector(11 downto 0) := ST   & R3 & R1;
constant st21 : std_logic_vector(11 downto 0) := ST   & R2 & R1;
constant st11 : std_logic_vector(11 downto 0) := ST   & R1 & R1;
constant st00 : std_logic_vector(11 downto 0) := ST   & R0 & R0;
constant st01 : std_logic_vector(11 downto 0) := ST   & R0 & R1;
------------------------------------------------------------------

constant clr0 : std_logic_vector(11 downto 0) := CLR  & R0 & "----";
constant clr1 : std_logic_vector(11 downto 0) := CLR  & R1 & "----";
constant clr2 : std_logic_vector(11 downto 0) := CLR  & R2 & "----";
constant clr3 : std_logic_vector(11 downto 0) := CLR  & R3 & "----";
-----------------------------------------------------------------

constant sub00: std_logic_vector(11 downto 0) := SUB  & R0 & R0;

-----------------------------------------------------------------
constant nop  : std_logic_vector(11 downto 0) := NOP  & R0 & R0;

--	 	 constant COMMANDa : t_Memory := ( "0001000001",
--	                                      "0001001001",
--													  "0001010001",
--	                                      "0001011001",			  
--													  "0001100001",
--	                                      "0001101001",
--													  "0001110001",
--	                                      "0001111001",
--											        "0011000001",
--													  "0011010011",
--											        "0011100101",
--													  "0011110111",
--													  "0011000010",
--													  "0011100110",
--											        "0011000100",
--													  "0100000000",
--                                         "0100000000",
--                                         "0100000000"
--													  );	

											  
--	 	 constant COMMANDa1 : t_Memory := ( unsigned(ld00),
--	                                       unsigned(ld11),
--														unsigned(ld22),
--														unsigned(ld33),
--														unsigned(ld44),
--														unsigned(ld55),
--														unsigned(ld66),
--														unsigned(ld77),
--														unsigned(st70),
--														unsigned(st61),
--														unsigned(st52),
--														unsigned(st43) );


-- 8! to M[8]
	 	 constant COMMANDa1 : t_Memory := ( unsigned(ld00),
	                                       unsigned(ld11),
														unsigned(ld22),
														unsigned(ld33),
														unsigned(ld44),
														unsigned(ld55),
														unsigned(ld66),
														unsigned(ld77),
														unsigned(mul76),
                                          unsigned(mv6G0),
														unsigned(mul65),
                                          unsigned(mv5G0),
														unsigned(mul54),
                                          unsigned(mv4G0),
														unsigned(mul43),
                                          unsigned(mv3G0),
														unsigned(mul32),
                                          unsigned(mv2G0),
														unsigned(mul21),
                                          unsigned(mv1G0),
														unsigned(mul10),
														unsigned(st71) ,
														unsigned(sub00),
                                          unsigned(ld00),
	                                       unsigned(ld11),
														unsigned(ld22),
														unsigned(ld33),
														unsigned(ld44),
														unsigned(ld55),
														unsigned(ld66),
														unsigned(mul65),
                                          unsigned(mv5G0),
														unsigned(mul54),
                                          unsigned(mv4G0),
														unsigned(mul43),
                                          unsigned(mv3G0),
														unsigned(mul32),
                                          unsigned(mv2G0),
														unsigned(mul21),
                                          unsigned(mv1G0),
														unsigned(mul10),
														unsigned(mv0G0),
														unsigned(st61) ,
														unsigned(sub00),
                                          unsigned(ld00),
	                                       unsigned(ld11),
														unsigned(ld22),
														unsigned(ld33),
														unsigned(ld44),
														unsigned(ld55),
														unsigned(mul54),
                                          unsigned(mv4G0),
														unsigned(mul43),
                                          unsigned(mv3G0),
														unsigned(mul32),
                                          unsigned(mv2G0),
														unsigned(mul21),
                                          unsigned(mv1G0),
														unsigned(mul10),
														unsigned(mv0G0),
														unsigned(st51) ,
														unsigned(sub00),
                                          unsigned(ld00),
	                                       unsigned(ld11),
														unsigned(ld22),
														unsigned(ld33),
														unsigned(ld44),
														unsigned(mul43),
                                          unsigned(mv3G0),
														unsigned(mul32),
                                          unsigned(mv2G0),
														unsigned(mul21),
                                          unsigned(mv1G0),
														unsigned(mul10),
														unsigned(mv0G0),
														unsigned(st41) ,
                                          unsigned(sub00),
														unsigned(ld00),
	                                       unsigned(ld11),
														unsigned(ld22),
														unsigned(ld33),
														unsigned(mul32),
                                          unsigned(mv2G0),
														unsigned(mul21),
                                          unsigned(mv1G0),
														unsigned(mul10),
														unsigned(mv0G0),
														unsigned(st31) ,
														unsigned(sub00),
                                          unsigned(ld00),
	                                       unsigned(ld11),
														unsigned(ld22),
														unsigned(mul21),
                                          unsigned(mv1G0),
														unsigned(mul10),
														unsigned(mv0G0),
														unsigned(st21) ,
														unsigned(sub00),
                                          unsigned(ld00),
	                                       unsigned(ld11),
														unsigned(mul10),
														unsigned(mv0G0),
														unsigned(st11) ,
														unsigned(sub00),
														unsigned(ld00),
														unsigned(st00),
														unsigned(nop),
														unsigned(nop),
														unsigned(nop));
														

begin
	
    oDATA <= std_logic_vector(COMMANDa1(to_integer(unsigned(iADDR))));
         
end Behavioral;

