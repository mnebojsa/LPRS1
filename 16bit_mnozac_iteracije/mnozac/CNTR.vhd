----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:24 12/07/2018 
-- Design Name: 
-- Module Name:    CNTR - Behavioral 
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

entity CNTR is
    generic ( bus_size : integer := 16 );
       port ( iCLK   : in  std_logic;
              iRST   : in  std_logic;
              iStart : in  std_logic;
			     oDone  : out std_logic );
end CNTR;

architecture Behavioral of CNTR is

    type COUNTER_STATE is (IDLE, COUNT, DONE);
	 signal stateCurrent, stateNext : COUNTER_STATE;
	 
    signal s_Cnt : unsigned(7 downto 0);
	 signal s_Done: std_logic;
begin
	 
next_state_logic:
    process(stateCurrent, iStart, s_Cnt)
    begin
        case stateCurrent is
		      when IDLE =>
				    if iStart = '1' then
					     stateNext <= COUNT;
					 else
					     stateNext <= IDLE;
					 end if;
					 
				when COUNT =>
                if s_Cnt = "00000001" then
                    stateNext <= DONE;
					 else
					     stateNext <= COUNT;
                end if;	

				when DONE =>
                stateNext <= IDLE;
	     end case;	  
	 end process;


switch_state_process:
    process(iCLK)
    begin
	     if (rising_edge(iCLK)) then
		      if iRST = '1' then
				   stateCurrent <= IDLE;
				else
				   stateCurrent <= stateNext;
				end if;
		  end if;
	 end process;
	 
signal_value_process:
    process(iCLK)
    begin
	     if rising_edge(iCLK) then
        case stateCurrent is
		      when IDLE =>
				     s_Cnt <= "00010000";
					  s_Done <= '0';
				when COUNT =>
                 s_Cnt <= s_Cnt - 1;
				when DONE =>
				     s_Cnt <= "00010000";
					  s_Done <= '1';
	     end case;
        end if;		  
    end process;

    oDone <= s_Done;
	 
end Behavioral;

