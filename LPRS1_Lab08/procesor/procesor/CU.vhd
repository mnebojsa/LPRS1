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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU is
    port( iCLK      : in  std_logic;
	       iRUN      : in  std_logic;
		    inRST     : in  std_logic;
		    iINST     : in  std_logic_vector( 9 downto 0);
		    iPC       : in  std_logic_vector(15 downto 0); 
			 
		    PC_CLEAR  : out std_logic;  
		    PC_EN     : out std_logic;  
			 REG_SEL   : out std_logic_vector(2 downto 0);  
			 REG_IN    : out std_logic_vector(2 downto 0);  
			 REG_EN    : out std_logic;  
			 ACC_WE    : out std_logic;  
			 RESULT_WE : out std_logic;  
			 ALU_SEL   : out std_logic_vector(0 downto 0);  
			 G_SEL     : out std_logic;  
			 DATA_SEL  : out std_logic );
end CU;

architecture Behavioral of CU is
    type stateM is (IDLE, READ_INSTR_WORD, OP1toBUS, BUStoREG, OP2toBUS, ALU_OP, GtoBUS);
    signal stateCurrent, stateNext : stateM;
	 
    signal sINSTR_WORD : std_logic_vector(9 downto 0);
begin

refresh_stateCurrent_process:
    process(iCLK)
	 begin
	     if (rising_edge(iCLK)) then
		      stateCurrent <= stateNext;
		  end if;
	 end process;

nextState_process:	 
    process(stateCurrent, inRST, iRUN, iINST, sINSTR_WORD)
	 begin
	     if (inRST = '1') then
		      stateNext <= IDLE;
			else	
		      case stateCurrent is
				    when IDLE =>
					     if (iRUN = '1') then
						      stateNext <= READ_INSTR_WORD;
						  else
						      stateNext <= IDLE;
						  end if;
				    when READ_INSTR_WORD =>
						      stateNext <= OP1toBUS;
				    when OP1toBUS =>
						      stateNext <= BUStoREG;					     
				    when BUStoREG =>
						  case sINSTR_WORD(9 downto 6) is
						      when "0000" => stateNext <= IDLE;
								when "0001" => stateNext <= IDLE;
								when others => stateNext <= OP2toBUS;
						  end case;
				    when OP2toBUS =>
						  stateNext <=	ALU_OP;	
				    when ALU_OP =>
						  stateNext <=	GtoBUS;	
				    when GtoBUS =>
						  stateNext <=	IDLE;						  
				end case;	 
		  end if;
	 end process;

control_signals_process:
    process(stateCurrent,sINSTR_WORD, inRST, iRUN, iINST)
	 begin
	     if (inRST = '1') then
		      PC_CLEAR  <= '1';  
		      PC_EN     <= '0';
			   REG_SEL   <= "000"; 
			   REG_IN    <= "000";
			   REG_EN    <= '0';
			   ACC_WE    <= '0';  
			   RESULT_WE <= '0';
			   ALU_SEL   <= "0";  
			   G_SEL     <= '0';  
			   DATA_SEL  <= '0';		      
			else	
		      case stateCurrent is
				    when IDLE =>
		              PC_CLEAR  <= '0';  
		              PC_EN     <= '0';
			           REG_SEL   <= "000"; 
			           REG_IN    <= "000";
			           REG_EN    <= '0';
			           ACC_WE    <= '0';  
			           RESULT_WE <= '0';
			           ALU_SEL   <= "0";  
			           G_SEL     <= '0';  
			           DATA_SEL  <= '0';	
				    when READ_INSTR_WORD => 
		              PC_EN     <= '1';
						  sINSTR_WORD <= iINST(9 downto 0);
				    when OP1toBUS =>
		              --PC_EN     <= '0';
						  case sINSTR_WORD(9 downto 6) is
						      when "0000" =>
								    REG_SEL <= sINSTR_WORD(2 downto 0);
						      when "0001" =>
								    DATA_SEL <= '1';
                        when others => 
								    REG_SEL <= sINSTR_WORD(5 downto 3);								
						  end case;						     
				    when BUStoREG =>
						 case sINSTR_WORD(9 downto 6) is
						     when "0000" =>
			                  REG_IN    <= sINSTR_WORD(5 downto 3);
			                  REG_EN    <= '1';                          
							  when "0001" =>
			                  REG_IN    <= sINSTR_WORD(5 downto 3);
			                  REG_EN    <= '1';							  
							  when "0010" =>
			                  REG_EN    <= '0';
			                  ACC_WE    <= '1'; 							  
							  when "0011" =>
			                  REG_EN    <= '0';
			                  ACC_WE    <= '1'; 	
                       when others =>   									
						 end case;	
				    when OP2toBUS =>
			          REG_SEL   <= sINSTR_WORD(2 downto 0);
			          REG_EN    <= '0';
			          ACC_WE    <= '0';  					 		 		
				    when ALU_OP =>
					     case sINSTR_WORD(9 downto 6) is
							  when "0010" =>
			                  ALU_SEL   <= "0";  							  
							  when "0011" =>
			                  ALU_SEL   <= "1";
                       when others =>
                           ALU_SEL <= "0";							  
						  end case;	
			           RESULT_WE <= '1'; 
				    when GtoBUS =>
			          G_SEL     <= '1';  					  
				end case;	 
		  end if;
	 end process;

end Behavioral;

