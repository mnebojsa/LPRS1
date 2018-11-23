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

entity CU is
	 generic( selSigNum : integer := 2 );
	 
    port( iCLK      : in  std_logic;
	       iRUN      : in  std_logic;
		    iRST      : in  std_logic;
		    iINST     : in  std_logic_vector(11 downto 0);
			 iSTATUS   : in  std_logic_vector( 4 downto 0);	
			 iG_SH_val : in  std_logic;
			 iMltpDone : in  std_logic;
		    oPC_CLEAR : out std_logic;  
		    oPC_EN    : out std_logic;  
			 oREG_SEL  : out std_logic_vector(2 downto 0);  
			 oREG_IN   : out std_logic_vector(2 downto 0);  
			 oREG_EN   : out std_logic;  
			 oACC_WE   : out std_logic;   
			 oALU_SEL  : out std_logic_vector(selSigNum-1 downto 0); 
          oRunMltp  : out std_logic;			 
			 oMulMuxSel: out std_logic_vector(1 downto 0); 
			 oMulOp1_WE: out std_logic;
          oG0_WE    : out std_logic;
          oG1_WE    : out std_logic;
          oG_SEL    : out std_logic_vector(1 downto 0); 				  
			 oDATA_SEL : out std_logic;
          oDATA_WE  : out std_logic;
			 oADDR_WE  : out std_logic;
			 oMUX_A_sel: out std_logic_vector(1 downto 0);
			 oG_WE	  : out std_logic;  
			 oWE       : out std_logic );	
			 
end CU;

architecture Behavioral of CU is
    type stateM is (IDLE, DECODE, RUN_CMD, NEXT_ADDR, ALU2G, G2Reg, ADDSM, ST1, PLACE_MUL_OP1, PLACE_MUL_OP2);
    signal stateCurrent, stateNext : stateM;
	 
	 signal s_PC_CLEAR  : std_logic;  
	 signal s_PC_EN     : std_logic;  
	 signal s_REG_SEL   : std_logic_vector(2 downto 0);  
	 signal s_REG_IN    : std_logic_vector(2 downto 0);  
	 signal s_REG_EN    : std_logic;  
	 signal s_ACC_WE    : std_logic;    
	 signal s_ALU_SEL   : std_logic_vector(selSigNum-1 downto 0);  
	 signal s_MulMuxSel : std_logic_vector(1 downto 0);
	 signal s_MulOp1_WE : std_logic;
	 signal s_G0_WE     : std_logic;
	 signal s_G1_WE     : std_logic;
	 signal s_G_SEL     : std_logic_vector(1 downto 0); 			 
	 signal s_DATA_SEL  : std_logic;
	 signal s_DATA_WE   : std_logic;
	 signal s_ADDR_WE   : std_logic;
	 signal s_MUX_A_sel : std_logic_vector(1 downto 0);  
	 signal s_G_WE	     : std_logic;	 
	 signal s_WE        : std_logic;
    signal s_MultiplyRun : std_logic;
    signal s_INSTR     : std_logic_vector(11 downto 0);
	 
    signal s_ERROR_READ: std_logic; 
	 signal sCnt        : integer range 0 to 16;
begin

nextState_process:	 
    process(stateCurrent, iRUN, s_INSTR, iSTATUS, sCnt, iG_SH_val)
	     begin	
		   
	     case stateCurrent is
				
		      when IDLE =>
			       if (iRUN = '1') then
					     stateNext <= DECODE;
					 else
						  stateNext <= IDLE;
				    end if;
						  
				when DECODE =>
					     stateNext <= RUN_CMD;	
						  
            when RUN_CMD =>
                case s_INSTR(11 downto 8) is	
					     when MV =>
						      stateNext <= NEXT_ADDR;
						  when MVI =>
						      stateNext <= NEXT_ADDR;
						  when ADD =>							
                        stateNext <= ALU2G;
						  when SUB =>								
							   stateNext <= ALU2G;							
						  when LOAD =>	
								stateNext <= NEXT_ADDR;	 
						  when ST =>	
								stateNext <= ST1;
						  when MVNZ =>	
								stateNext <= NEXT_ADDR;
						  when MVA =>	
								stateNext <= NEXT_ADDR;							  
						  when MUL =>	
						       stateNext <= PLACE_MUL_OP1;
						  when NOP =>
                        stateNext <= NEXT_ADDR;
						  when others =>
						      stateNext  <= IDLE;
				    end case;
					 
				when ST1 =>
                stateNext <= NEXT_ADDR;
					 
			   when ALU2G =>
                case s_INSTR(11 downto 8) is
						  when ADD =>
				            stateNext <= NEXT_ADDR;
						  when SUB =>
				            stateNext <= NEXT_ADDR;							
					     when others => 
						      stateNext <= IDLE;
					 end case;				  

            when PLACE_MUL_OP1 =>
				    stateNext <= PLACE_MUL_OP2;
					 
            when PLACE_MUL_OP2 =>
				    stateNext <= NEXT_ADDR;
				
				when NEXT_ADDR =>
					     case s_INSTR(11 downto 8) is	
					         when MV =>
						          stateNext <= IDLE;
								when MVI =>
								    stateNext <= IDLE;
								when ADD =>									 
                            stateNext <= IDLE;
								when SUB =>	
								    stateNext <= IDLE;
								when LOAD =>	
								    stateNext <= IDLE;	 
								when ST =>	
								    stateNext <= IDLE;
								when MVNZ =>	
								    stateNext <= IDLE;
								when MVA =>	
								    stateNext <= IDLE;													  
								when MUL =>	
								    stateNext <= IDLE;
						      when NOP =>
                            stateNext <= IDLE;									 
								when others =>
								    stateNext <= IDLE;
						  end case;
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
					 s_PC_CLEAR   <= '1';
				else				
                s_PC_CLEAR   <= '0';					 
				    stateCurrent <= stateNext;  
				end if;	 
		  end if;
	 end process;


control_signals_process:
    process(stateCurrent, sCnt, iINST, s_INSTR, iSTATUS)
        begin	
				
				--s_INSTR     <= "000000000000";
						  
            case stateCurrent is
				    when IDLE =>   
				        s_PC_EN     <= '0';
				        s_REG_SEL   <= "000"; 
				        s_REG_IN    <= "000";
				        s_REG_EN    <= '0';
				        s_ACC_WE    <= '0';  
				        s_ALU_SEL   <= "11";
                    s_MulMuxSel <= "00";
						  s_MulOp1_WE <= '0';
                    s_G0_WE     <= '0';
                    s_G1_WE     <= '0';
                    s_G_SEL	  <= "00";								  
				        s_DATA_SEL  <= '0';	
				        s_DATA_WE   <= '0';
				        s_ADDR_WE   <= '0';
				        s_MUX_A_sel <= "00";
                    s_G_WE	     <= '0';							  
			           s_WE        <= '0';			 
						  s_MultiplyRun<= '0';
						  s_ERROR_READ <= '0';
						  
              when DECODE =>
				        s_PC_EN     <= '0';
				        s_REG_SEL   <= "000"; 
				        s_REG_IN    <= "000";
				        s_REG_EN    <= '0';
				        s_ACC_WE    <= '0';  
				        s_ALU_SEL   <= "11";
                    s_MulMuxSel <= "00";
						  s_MulOp1_WE <= '0';
                    s_G0_WE     <= '0';
                    s_G1_WE     <= '0';
                    s_G_SEL	  <= "00";								  
				        s_DATA_SEL  <= '0';	
				        s_DATA_WE   <= '0';
				        s_ADDR_WE   <= '0';
				        s_MUX_A_sel <= "00";
                    s_G_WE	     <= '0';							  
			           s_WE        <= '0';			 
						  s_MultiplyRun<= '0';
						  s_ERROR_READ <= '0';
						  
                  s_INSTR <= iINST;								 										 

				  when RUN_CMD =>	
				        s_PC_EN     <= '0';
				        s_REG_SEL   <= "000"; 
				        s_REG_IN    <= "000";
				        s_REG_EN    <= '0';
				        s_ACC_WE    <= '0';  
				        s_ALU_SEL   <= "11";
                    s_MulMuxSel <= "00";
						  s_MulOp1_WE <= '0';
                    s_G0_WE     <= '0';
                    s_G1_WE     <= '0';
                    s_G_SEL	  <= "00";								  
				        s_DATA_SEL  <= '0';	
				        s_DATA_WE   <= '0';
				        s_ADDR_WE   <= '0';
				        s_MUX_A_sel <= "00";
                    s_G_WE	     <= '0';							  
			           s_WE        <= '0';			 
						  s_MultiplyRun<= '0';
						  s_ERROR_READ <= '0';
				  
					   case s_INSTR(11 downto 8) is
					       when MV   =>
							     case s_INSTR(3 downto 0) is
								      when R0 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);
										 when R1 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);	
										 when R2 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);	
										 when R3 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);	
										 when R4 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);	
										 when R5 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);	
										 when R6 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);											 
										 when R7 =>
											 s_REG_SEL <= s_INSTR(2 downto 0);
										 when G0 =>
												  s_MulMuxSel <= "10";						 
												  s_G_SEL     <= "01";
										 when G1 =>
												  s_MulMuxSel <= "01";						 
												  s_G_SEL     <= "01";													 
										 when others =>
                                      s_G_SEL <= "00";										 
									 end case;
									 
									
							 when MVI  =>
							      
									s_DATA_SEL <= '1';
									s_REG_IN   <= s_INSTR(6 downto 4);	
									s_REG_EN   <= '1';
							 when ADD  =>
							      --first operand in ACC
							      s_DATA_SEL <= '0';
							      s_G_SEL     <= "00";
									
							 		s_REG_SEL   <= s_INSTR(6 downto 4);
									s_MUX_A_sel <= "01";
									s_ACC_WE    <= '1';
									s_ALU_SEL   <= "00"; 
								
							 when SUB  =>
							      s_DATA_SEL <= '0';
							      s_G_SEL     <= "00";
									
								  s_REG_SEL   <= s_INSTR(6 downto 4);
								  s_MUX_A_sel <= "01";	
								  s_ACC_WE    <= '1';								
                          s_ALU_SEL   <= "01"; 
								 
						    when LOAD => 
							     s_REG_SEL   <= s_INSTR(2 downto 0);
								  s_ADDR_WE <= '1';
					           s_WE      <= '0';

							 when ST   =>
							     s_REG_SEL   <= s_INSTR(6 downto 4);
								  s_ADDR_WE <= '1';
					           s_WE      <= '0';	
 
							 when MVNZ =>
							     if (iSTATUS(0) = '0') then
									   s_REG_SEL <= iINST(2 downto 0);
									   s_REG_IN  <= iINST(6 downto 4);
									   s_REG_EN  <= '1';	                           
                          else
									   s_REG_EN  <= '0';								  
                          end if;	
										 
						    when MVA =>
								  s_MUX_A_sel <= "01";
								  s_REG_SEL <= iINST(6 downto 4);
								  s_ACC_WE  <= '1';										 
 									 
							 when MUL  =>
							      s_REG_SEL <= iINST(2 downto 0);
									s_G0_WE <= '1';
							 
							 when NOP =>		 
							 
							 when others => 
						end case;
 							  
                   when ST1 =>
							  s_ADDR_WE <= '0';
							  case s_INSTR(3 downto 0) is
							      when R0 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';
							      when R1 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';	
							      when R2 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';	
							      when R3 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';	
							      when R4 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';	
							      when R5 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';	
									when R6 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';											 
							      when R7 =>
							          s_REG_SEL <= s_INSTR(2 downto 0);									 
							          s_DATA_WE <= '1';	
							      when G0 =>
									    --if iSTATUS(4) = '1' then
							     		     s_MulMuxSel <= "10";						 
							              s_G_SEL     <= "01";
										     s_DATA_WE   <= '1';
											  s_ERROR_READ <= '0';
										 --else
										  --   s_ERROR_READ <= '1';
                               --end if;										 
									when others =>	 
								end case;	

						when PLACE_MUL_OP1 =>
						     s_G0_WE <= '0';	
							  
							  s_MulOp1_WE <= '1';
							  s_REG_SEL   <= iINST(6 downto 4);
							  	
                  
						when PLACE_MUL_OP2 =>
						     s_MulOp1_WE <= '0';	
							  
							  s_ALU_SEL   <= "11";
							  s_G1_WE <= '1';	
							  s_REG_SEL <= iINST(6 downto 4);
							  
                   when ALU2G	=>
                       s_ACC_WE    <= '0';
							  s_DATA_SEL <= '0';
							  s_G_SEL     <= "00";
									
						 	  s_REG_SEL   <= s_INSTR(2 downto 0);
							  s_G_WE      <= '1';
							  s_PC_EN     <= '1';							  
							  					  
						 when NEXT_ADDR =>
					        case s_INSTR(11 downto 8) is
					            when MV   =>
									    s_REG_IN  <= iINST(6 downto 4);
									    s_REG_EN  <= '1';
									
									    --s_G_SEL <= "00";
									   
									    s_PC_EN  <= '1';
								       --s_REG_EN <= '0';
	 					         when MVI  =>
								       s_PC_EN  <= '1';
								       s_REG_EN <= '0';
								   when ADD  =>
                               s_ACC_WE    <= '0';
							          s_DATA_SEL  <= '0';
										 s_G_WE      <= '0';
							          s_PC_EN     <= '0';			
							          s_G_WE      <= '0';

							          s_G_SEL     <= "10";								
							          s_REG_IN    <= s_INSTR(6 downto 4);
							          s_REG_EN    <= '1';			
								   when SUB  =>
                               s_ACC_WE    <= '0';
							          s_DATA_SEL  <= '0';
										 s_G_WE      <= '0';
							          s_PC_EN     <= '0';			
							          s_G_WE      <= '0';

							          s_G_SEL     <= "10";								
							          s_REG_IN    <= s_INSTR(6 downto 4);
							          s_REG_EN    <= '1';								
								   when LOAD =>
										 s_ADDR_WE  <= '0';
										 
										 s_DATA_SEL <= '1';
										 s_REG_EN   <= '1';
										 s_REG_IN   <= iINST(6 downto 4);									
										 
									    s_PC_EN    <= '1';
										 
								   when ST   =>
									    s_DATA_WE  <= '0';
										 
										 s_WE       <= '1';
										 s_PC_EN    <= '1';	

								   when MVNZ =>
									    s_PC_EN  <= '1';
								       s_REG_EN <= '0';									
									
								   when MVA =>	
										 s_PC_EN    <= '1';
                               s_ACC_WE	<= '0';	
										 
								   when MUL  =>
                               s_G1_WE <= '0';
										 
										 s_PC_EN    <= '1';
										 s_MultiplyRun<= '1';
									
									when NOP =>
									    s_PC_EN    <= '1';
								   when others => 
									    s_REG_EN   <= '0';
									    s_PC_EN    <= '1';
						     end case;
								              
			   when others =>				
        end case;			  
	 end process;
 
    oPC_CLEAR <= s_PC_CLEAR;  
	 oPC_EN    <= s_PC_EN;
	 oREG_SEL  <= s_REG_SEL; 
	 oREG_IN   <= s_REG_IN;
	 oREG_EN   <= s_REG_EN;
	 oACC_WE   <= s_ACC_WE;  
	 oALU_SEL  <= s_ALU_SEL;
    oRunMltp  <= s_MultiplyRun; 
    oMulMuxSel<= s_MulMuxSel;
	 oMulOp1_WE<= s_MulOp1_WE;
    oG0_WE    <= s_G0_WE;
    oG1_WE    <= s_G1_WE;		  
    oG_SEL    <= s_G_SEL;
	 oDATA_SEL <= s_DATA_SEL;	
	 oDATA_WE  <= s_DATA_WE;
	 oADDR_WE  <= s_ADDR_WE;
	 oMUX_A_sel<= s_MUX_A_sel;	 
    oG_WE     <= s_G_WE;
	 oWE       <= s_WE;
 	 
end Behavioral;
