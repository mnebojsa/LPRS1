----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:02 11/22/2018 
-- Design Name: 
-- Module Name:    top_module - Behavioral 
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

entity top_module is
    port ( iCLK   : in  std_logic;
           iRST   : in  std_logic;
           iRUN	: in  std_logic;
			  odummy : out std_logic_vector(15 downto 0)
		  );
end top_module;

architecture Behavioral of top_module is

    component procesor
	     port( iCLK   : IN  std_logic;
		        iRST   : IN  std_logic;
		        iRUN   : IN  std_logic;
		        iINSTR : IN  std_logic_vector(9 downto 0);
		        iDATA  : IN  std_logic_vector(15 downto 0);          
		        oBUS   : OUT std_logic_vector(15 downto 0);
		        oPC    : OUT std_logic_vector(15 downto 0);
		        oDADDR : OUT std_logic_vector(15 downto 0) );
    end component;


    component RAM_mem
	     port( iCLK  : IN  std_logic;
		        iRST  : IN  std_logic;
		        iADDR : IN  std_logic_vector(2 downto 0);
		        iDATA : IN  std_logic_vector(15 downto 0);
		        iWR   : IN  std_logic;
		        iRD   : IN  std_logic;          
		        oDATA : OUT std_logic_vector(15 downto 0) );
    end component;

    component ROM_mem
	     port( iADDR : IN  std_logic_vector(15 downto 0);          
		        oDATA : OUT std_logic_vector(9 downto 0) );
    end component;


    signal sDADDR : std_logic_vector(15 downto 0); 
    signal sDataFromProc : std_logic_vector(15 downto 0); 
    signal sDataFromRAM : std_logic_vector(15 downto 0);

    signal sFromROM : std_logic_vector(9 downto 0);
    signal sfromPC : std_logic_vector(15 downto 0);	 
	 
begin

Inst_RAM_mem: 
    RAM_mem
    port map( iCLK  => iCLK,
		        iRST  => iRST,
		        iADDR => sDADDR(2 downto 0),
		        iDATA => sDataFromProc,
		        oDATA => sDataFromRAM,
		        iWR   => '0',
		        iRD   => '1' );


Inst_ROM_mem:
    ROM_mem 
    port map( oDATA => sFromROM,
		        iADDR => sfromPC);
			  
Inst_procesor:
    procesor
    port map( iCLK   => iCLK,
		        iRST   => iRST,
		        iRUN   => iRUN,
		        iINSTR => sFromROM,
		        iDATA  => sDataFromRAM,
		        oBUS   => sDataFromProc,
		        oPC    => sfromPC,
		        oDADDR => sDADDR);				  

odummy <= sDataFromProc;
		
end Behavioral;

