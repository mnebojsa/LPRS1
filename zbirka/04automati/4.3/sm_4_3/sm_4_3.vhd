----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:38 10/31/2018 
-- Design Name: 
-- Module Name:    sm_4_3 - Behavioral 
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

entity sm_4_3 is
    port( 
	     CLK  : in  std_logic;
	     RSTn : in  std_logic;
	     iX   : in  std_logic_vector(1 downto 0);
	     oY   : out std_logic_vector(1 downto 0)
		  );
end sm_4_3;

architecture Behavioral of sm_4_3 is
    -- states are   "00","01","10","11"
	 type smState is (S1,  S2,  S3,  S4);
	 
	 signal stateCurrent, stateNext : smState;
	 signal sOutValue : std_logic_vector(1 downto 0);
begin

set_next_state:
    process(CLK)
	 
	 begin
		 if (rising_edge(clk)) then
			  if ('0' = RSTn) then
					stateNext <= S1;
					sOutValue  <= "10";
			  else
					case stateCurrent is
						 when S1 =>
							  if ("00" = iX) then
									stateNext <= S1;
									sOutValue  <= "10";
							  elsif ("01" = iX) then
									stateNext <= S2;
									sOutValue  <= "00";
							  elsif ("10" = iX) then
									--do nothing
							  end if;
						when S2 =>
							  if ("00" = iX) then
									stateNext <= S1;
									sOutValue  <= "00";
							  elsif ("01" = iX) then
									stateNext <= S2;
									sOutValue  <= "10";
							  elsif ("10" = iX) then
									stateNext <= S3;
									sOutValue  <= "01";
							  end if;  
						when S3 =>
							  if ("00" = iX) then
									stateNext <= S1;
									sOutValue  <= "01";
							  elsif ("01" = iX) then
									stateNext <= S2;
									sOutValue  <= "11";
							  elsif ("10" = iX) then
									stateNext <= S3;
									sOutValue  <= "00";
							  end if; 
						 when others =>
							  stateNext <= S1;
							  sOutValue  <= "10";    					 
					end case;		  
			  end if;
		 end if;  
	 end process;
	 
	 oY <= sOutValue;

change_state:
    process(CLK)
    begin
        if (rising_edge(clk)) then
		      if ('0' = RSTn) then
				    stateCurrent <= S1;
				else
				    stateCurrent <= stateNext;
				end if;
		  end if;
    end process;	 
	 
end Behavioral;

