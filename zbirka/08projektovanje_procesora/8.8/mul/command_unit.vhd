----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:39 11/12/2018 
-- Design Name: 
-- Module Name:    command_unit - Behavioral 
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

entity command_unit is
    port( iCLK      : in  std_logic;
          inRESETn  : in  std_logic;
          iSTART    : in  std_logic;
          iY0       : in  std_logic;
          iCNT_0    : in  std_logic;
          oLoad_Cnt : out std_logic;
          oLoad_X	  : out std_logic;
          oLoad_Y   : out std_logic;
          oLoad_A   : out std_logic;
			 onRSTn_A  : out std_logic;
			 oCE       : out std_logic;
			 oREADY    : out std_logic );
end command_unit;

architecture Behavioral of command_unit is
    type stateM is (IDLE, INIT, CHECK_Y0, ADD, SHIFT, CHECK_CNT);
	 signal stateCurrent, stateNext : stateM;

	 signal  soLoad_Cnt : std_logic;
	 signal  soLoad_X	  : std_logic;
	 signal  soLoad_Y   : std_logic;
	 signal  soLoad_A   : std_logic;
	 signal  sonRSTn_A  : std_logic;
	 signal  soCE       : std_logic;
	 signal  soREADY    : std_logic; 
	 
begin

swich_curr_state:
    process(iCLK)
	 begin
	     if rising_edge(iCLK) then
	         stateCurrent <= stateNext;
		  end if;	
	 end process;

next_state_process:
    process(iSTART, iY0, iCNT_0, stateCurrent)
    begin
	     case stateCurrent is
		      when IDLE =>
				    if iSTART = '1' then
					     stateNext <= INIT;
					 else
                    stateNext <= IDLE;					 
					 end if;
				when INIT =>
                 stateNext <= CHECK_Y0;				
				when CHECK_Y0 =>
				     if iY0 = '1' then
					      stateNext <= ADD;
					  else
         			   stateNext <= SHIFT;		  
					  end if;
				when ADD =>
				     stateNext <= SHIFT;
				when SHIFT =>
                 stateNext <= CHECK_CNT;
				when CHECK_CNT =>
				     if iCNT_0 = '0' then
					      stateNext <= CHECK_Y0;
					  else
					      stateNext <= IDLE;
					  end if;
				when others =>
				    stateNext <= IDLE;
		  end case;
	 end process;
	 
output_process:
    process(stateCurrent)
    begin
	     case stateCurrent is
		      when IDLE =>
                soLoad_Cnt <= '0';
                soLoad_X   <= '0';
                soLoad_Y   <= '0';
                soLoad_A   <= '0';
	             sonRSTn_A  <= '0';
	             soCE       <= '0';
	             soREADY    <= '1';				    
				when INIT =>
                soLoad_Cnt <= '1';
                soLoad_X   <= '1';
                soLoad_Y   <= '1';
                soLoad_A   <= '0';
	             sonRSTn_A  <= '1';
	             soCE       <= '0';
	             soREADY    <= '0';                 
				when CHECK_Y0 =>
                soLoad_Cnt <= '0';
                soLoad_X   <= '0';
                soLoad_Y   <= '0';
                soLoad_A   <= '0';
	             sonRSTn_A  <= '1';
	             soCE       <= '0';
	             soREADY    <= '0'; 				     
				when ADD =>
--acc				     
				when SHIFT =>     
                soLoad_A   <= '1';
	             soCE       <= '0';                 
				when CHECK_CNT =>
                soLoad_Cnt <= '1';
                soLoad_X   <= '1';
                soLoad_Y   <= '1';
                soLoad_A   <= '0';
	             sonRSTn_A  <= '1';
	             soCE       <= '0';
	             soREADY    <= '0'; 				     
				when others =>

		  end case;
	 end process;	 


    oLoad_Cnt <= soLoad_Cnt;
    oLoad_X	  <= soLoad_X;
    oLoad_Y   <= soLoad_Y;
    oLoad_A   <= soLoad_A;
	 onRSTn_A  <= sonRSTn_A;
	 oCE       <= soCE;
	 oREADY    <= soREADY;
	 
end Behavioral;

