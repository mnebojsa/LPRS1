----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:47 11/13/2018 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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

entity CU is
    port( iCLK : in  std_logic;
          iRSTn: in  std_logic;
			 inJ  : in  std_logic_vector(2 downto 0);
			 inK  : in  std_logic_vector(2 downto 0);			 
          oQ   : out std_logic_vector(2 downto 0);
          oQn  : out std_logic_vector(2 downto 0) );
end CU;

architecture Behavioral of CU is

    component JK_ff
    port( iCLK  : in  std_logic;
		    iRSTn : in  std_logic;
		    J     : in  std_logic;
		    K     : in  std_logic;          
		    Q     : out std_logic;
		    Qn    : out std_logic );
    end component;
	
begin

Inst_JK_ff0:
    JK_ff
	 port map( iCLK  => iCLK,
		        iRSTn => iRSTn,
		        J     => inJ(0),
		        K     => inK(0),
		        Q     => oQ(0),
		        Qn    => oQn(0));

Inst_JK_ff1:
    JK_ff
	 port map( iCLK  => iCLK,
		        iRSTn => iRSTn,
		        J     => inJ(1),
		        K     => inK(1),
		        Q     => oQ(1),
		        Qn    => oQn(1));

Inst_JK_ff2:
    JK_ff
	 port map( iCLK  => iCLK,
		        iRSTn => iRSTn,
		        J     => inJ(2),
		        K     => inK(2),
		        Q     => oQ(2),
		        Qn    => oQn(2));
				  
end Behavioral;



