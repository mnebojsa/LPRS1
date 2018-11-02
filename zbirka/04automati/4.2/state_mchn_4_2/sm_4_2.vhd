----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:06 10/31/2018 
-- Design Name: 
-- Module Name:    sm_4_2 - Behavioral 
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

entity sm_4_2 is
    port( clk : in  std_logic;
	       rst : in  std_logic;
	       iX  : in  std_logic;
	       oY  : out std_logic );
end sm_4_2;

architecture Behavioral of sm_4_2 is
    type states is (S1, S2, S3, S4);
	 signal stateCurrent, stateNext : states;
	 
begin

set_next_state:
    process(iX, stateCurrent,rst)
	 begin
        if(stateCurrent = S1) then
		      if(iX = '0') then
				    stateNext <= S1;
				else
				    stateNext <= S2;  
            end if;
        elsif(stateCurrent = S2) then
		      if(iX = '0') then
				    stateNext <= S1;
				else
				    stateNext <= S4; 
            end if;
        elsif(stateCurrent = S2) then
		      if(iX = '0') then
				    stateNext <= S1;
				else
				    stateNext <= S2; 
            end if;
        elsif(stateCurrent = S3) then
		      if(iX = '0') then
				    stateNext <= S1;
				else
				    stateNext <= S2; 
            end if;				
        else
		      if(iX = '0') then
				    stateNext <= S3;
				else
				    stateNext <= S2; 
            end if;
        end if;	
	 end process;

change_state:
    process(clk)
	 begin
	     if (rising_edge(clk)) then
		  	   if ('1' = rst) then
					 stateCurrent <= S1;
				else
		          stateCurrent <= stateNext;
				end if;
		  end if;
	 end process;
	 
set_output_value:
    process(clk)
	 begin
	     if (rising_edge(clk)) then
		  	   if ('1' = rst) then
					 oY <= '0';
				else
				    if(stateCurrent = S1 or stateCurrent = S2 or stateCurrent = S4) then
					     oY <= '0';
					 else
					     if(iX = '0') then
						      oY <= '1';
						  else
								oY <= '0'; 
						  end if;
				    end if;	
				end if;
		  end if;
	 end process;	 
	 
end Behavioral;

