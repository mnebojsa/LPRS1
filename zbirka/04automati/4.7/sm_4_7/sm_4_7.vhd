----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:12 11/01/2018 
-- Design Name: 
-- Module Name:    sm_4_7 - Behavioral 
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

entity sm_4_7 is
    port( CLK   :  in std_logic;
			 RSTn  :  in std_logic;
			 start :  in std_logic;
	       iA    :  in std_logic_vector(3 downto 0);
			 iB    :  in std_logic_vector(3 downto 0);
			 done  : out std_logic;
			 e     : out std_logic );
end sm_4_7;

architecture Behavioral of sm_4_7 is
	 
    component mux4x1
	     port ( iD   : in  std_logic_vector (3 downto 0);
		         iSel : in  std_logic_vector (1 downto 0);
               oY   : out std_logic );
    end component;	    

    component fsm
	 port( CLK   :  in std_logic;
		    RSTn  :  in std_logic;
		    start :  in std_logic;
			 BPE   :  in std_logic;
		    S     : out std_logic_vector(1 downto 0);        
		    done  : out std_logic;
          equl  : out std_logic );
    end component;	
	
	
    signal sAi  : std_logic;
	 signal sBi  : std_logic;
	 signal sBPE : std_logic;
	 signal iSel : std_logic_vector(1 downto 0);
	 signal iiSel : std_logic_vector(1 downto 0);
begin
  
G1: mux4x1 
    port map (iD   => iA, 
              iSel => iSel(1 downto 0), 
		 		  oY   => sAi 
				  );
G2: mux4x1 
    port map (iD   => iB,
		        iSel => iSel(1 downto 0),
			  	  oY   => sBi
				  );
				  
    sBPE <= sAi xor sBi;

Inst_fsm: fsm
    port map ( CLK   => CLK,
		         RSTn  => RSTn,
		         start => start,
		         BPE   => sBPE,
					S     => iiSel(1 downto 0),
		         done  => done,
		         equl  => e
	            );
    iSel <= iiSel;					
					
end Behavioral;




