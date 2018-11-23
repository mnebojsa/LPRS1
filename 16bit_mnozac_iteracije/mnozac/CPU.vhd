----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:58 11/20/2018 
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
use IEEE.NUMERIC_STD.ALL;
use work.command_list.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU is
	 generic( selSigNum : integer := 2 );
	 
    port( iCLK       : in  std_logic;
	       iRUN       : in  std_logic;
		    iRST       : in  std_logic;
			 iG_SH_val  : in  std_logic;
			 G0_WE      : in  std_logic;
			 G1_WE      : in  std_logic;
			 
			 oALU_SEL   : out std_logic_vector(selSigNum-1 downto 0);  
			 oSHG1_EN   : out std_logic;
			 oSHG0_EN   : out std_logic;
			 oG1_WE	   : out std_logic; 
          oG0_WE	   : out std_logic );
end CPU;

architecture Behavioral of CPU is
    type stateM is (IDLE, SHG0, SHG, ADD);
    signal stateCurrent, stateNext ,prevState: stateM;

	 signal s_ALU_SEL   : std_logic_vector(selSigNum-1 downto 0);  
	  
	 signal s_SHG0_EN	  : std_logic;
	 signal s_SHG1_EN	  : std_logic;	 
	 signal s_G1_WE	  : std_logic; 	 
	 signal s_G0_WE	  : std_logic;  

	 signal sCnt        : integer range 0 to 16;
begin


nextState_process:	 
    process(stateCurrent, iRUN, sCnt, iG_SH_val)
	 begin
		      case stateCurrent is
				
				    when IDLE =>
                    if (iRUN = '1') then
						      if iG_SH_val = '0' or sCnt = 16 then
						           stateNext <= SHG0;
								else
                             stateNext <= SHG;
                        end if;									  
						  else
						      stateNext <= IDLE;
						  end if;
						  
				    when SHG0 =>
                    if iG_SH_val = '1' then
						      stateNext <= SHG;
						  else
						      if(sCnt = 0) then
								     stateNext <= IDLE;
								else
                             stateNext <= SHG0;   								
                        end if; 
						  end if;
						  
				    when SHG =>
					      if (sCnt = 0) then
	 	                   stateNext <= IDLE;
					      elsif (iG_SH_val = '1') then 
							    stateNext <= ADD;
							else
							    stateNext <= SHG;							
							end if;
							
				    when ADD =>
							stateNext <= SHG;							
							
					when others =>
                    stateNext <= IDLE;					
				end case;	 
	 end process;

refresh_stateCurrent_process:
    process(iCLK)
	 begin
	     if (rising_edge(iCLK)) then
		      if (iRST = '1') then
		          stateCurrent <= IDLE;
				else				
				    stateCurrent <= stateNext;  
				end if;	 
		  end if;
	 end process;

control_signals_process:
    process(stateCurrent, G1_WE, G0_WE, sCnt)
	 begin
	     					  s_ALU_SEL  <= "11";
                       s_SHG0_EN  <= '0';							  
			              s_SHG1_EN  <= '0';
                       s_G1_WE	 <= G1_WE;					
                       s_G0_WE	 <= G0_WE;
					case stateCurrent is
						 when IDLE =>
					        s_ALU_SEL  <= "11";
                       s_SHG0_EN  <= '0';							  
			              s_SHG1_EN  <= '0';
                       s_G1_WE	 <= G1_WE;					
                       s_G0_WE	 <= G0_WE;  

						 when SHG0 =>   					 
                       s_SHG0_EN  <= '1';							  
			              s_SHG1_EN  <= '0';
                       s_G1_WE	 <= '0';					
                       s_G0_WE	 <= '0'; 
							  
						 when SHG =>						 
                       s_SHG0_EN  <= '1';							  
			              s_SHG1_EN  <= '1';
                       s_G1_WE	 <= '0';					
                       s_G0_WE	 <= '0';
							  
						 when ADD =>
					        s_ALU_SEL  <= "00";
                       s_SHG0_EN  <= '0';							  
			              s_SHG1_EN  <= '0';
                       s_G1_WE	 <= '1';					
                       s_G0_WE	 <= '0';  
						when others =>	  
					end case;	 	  
	 end process;

 
decrement_process:
    process(iCLK)
	 begin
	     if (rising_edge(iCLK)) then				
			   case stateCurrent is
					    when IDLE =>
						     sCnt   <= 16; 
						 when SHG0 =>
					        sCnt   <= sCnt - 1;							  
						 when SHG =>
					        sCnt   <= sCnt - 1;
						 when others =>	  
			   end case;
		  end if;
	 end process;
	 
	 oALU_SEL   <= s_ALU_SEL; 
	 oSHG0_EN   <= s_SHG0_EN;
	 oSHG1_EN   <= s_SHG1_EN;	 
	 oG1_WE	   <= s_G1_WE;
    oG0_WE	   <= s_G0_WE;
	 
end Behavioral;
