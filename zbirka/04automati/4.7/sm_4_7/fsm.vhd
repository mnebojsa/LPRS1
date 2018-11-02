----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:39 11/01/2018 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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

entity fsm is
    Port ( CLK   :  in std_logic;
           RSTn  :  in std_logic;
           start :  in std_logic;
			  BPE   :  in std_logic;
           S     : out std_logic_vector (1 downto 0);
           done  : out std_logic;
           equl  : out std_logic);
end fsm;

architecture Behavioral of fsm is
    type states is (IDLE, COMPUTE, DONE_EQU, DONE_NOT_EQU);
    signal stateCurrent, stateNext : states;
	 
	 component counter
	    port(
		      iEn     : in  std_logic;
		      iCLK    : in  std_logic;
		      iRSTn   : in  std_logic;
			   oCnt    : out std_logic_vector(1 downto 0)
		      );
	 end component;

    signal sCntDone  : std_logic;
    signal sCntVal   : std_logic_vector(1 downto 0);	 
	 signal sCntEnable_n      : std_logic;
	 signal sStartCnt : std_logic;
begin

Inst_counter: counter 
   port map(
		       iEn     => sCntEnable_n,
		       iCLK    => CLK,
		       iRSTn   => RSTn,
		       oCnt    => sCntVal
	 );
	 
next_state_proc:	 
    process(RSTn, stateCurrent, start, sCntDone, BPE)	 
	 begin
		 if ('0' = RSTn) then
	        stateNext <= IDLE;
		 else
			  case stateCurrent is
					 when IDLE => 
				       if '1' = start then
						     stateNext <= COMPUTE;
						 else
						     stateNext <= IDLE;						  
						 end if;
							  
					 when COMPUTE   => 
						 if '1' = sCntDone then
						     stateNext <= DONE_EQU;
						 elsif '0' = sCntDone and '1' = BPE then 
							  stateNext <= DONE_NOT_EQU;
						 else
						     stateNext <= COMPUTE;
					    end if;
						      
					 when DONE_NOT_EQU =>
					     stateNext <= IDLE; 					  
				    when DONE_EQU  => 
                    stateNext <= IDLE;
		      end case;

	     end if;
	 end process;

fsm_out_signal_val_proc:
    process(RSTn, stateCurrent, sCntVal)
	 begin
	     
			  if ('0' = RSTn) then
               done <= '0';
               equl <= '0';		
				   sCntDone  <= '0';	
				   sStartCnt <= '1';						
			  else
					case stateCurrent is
						 when IDLE      => 
                       done <= '0';
                       equl <= '0';	
							  sCntDone  <= '0';
							  sStartCnt <= '1';								  
						 when COMPUTE   => 
                       if "11" = sCntVal then
                           sCntDone <= '1';
									sStartCnt <= '1';
                       else
							      sStartCnt <= '0';										
                       end if;							  
						 when DONE_NOT_EQU =>
						     sStartCnt <= '1';
                       done <= '1';
                       equl <= '0';				  
						 when DONE_EQU  =>
                       sStartCnt <= '1';						 
                       done <= '1';
                       equl <= '1';	                     
					end case;
			  end if;
	 end process;	


current_state_proc:
    process(CLK)
	 begin
	     if rising_edge(CLK) then
			  if ('0' = RSTn) then
			      stateCurrent <= IDLE;
			  else
					stateCurrent <= stateNext;
			  end if;
        end if;

	 end process;	 


    S            <= sCntVal;
	 sCntEnable_n <= BPE or sStartCnt; 
	 
end Behavioral;


