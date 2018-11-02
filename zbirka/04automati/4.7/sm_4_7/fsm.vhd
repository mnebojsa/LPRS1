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
--use IEEE.NUMERIC_STD.ALL;

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
    type states is (IDLE, COMPUTE, DONE_EQU, DONE_UEQU);
    signal stateCurrent, stateNext : states;
	 
	 component counter
	    port(
		      iEn     : in  std_logic;
		      iCLK    : in  std_logic;
		      iRSTn   : in  std_logic;
			   oCnt    : out std_logic_vector(1 downto 0);
            oCntMax : out std_logic
		      );
	 end component;

    signal sCntDone : std_logic;
    signal sCntVal  : std_logic_vector(1 downto 0);	 
	 signal sBPE     : std_logic;
begin

    sBPE <= BPE;

Inst_counter: counter 
    port map(
		       iEn     => sBPE,
		       iCLK    => CLK,
		       iRSTn   => RSTn,
		       oCnt    => sCntVal,
				 oCntMax => sCntDone
	 );
	 
	 done <= sCntDone;
    process(CLK)
	 
	 begin
	     if rising_edge(CLK) then
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
						     S <= sCntVal;
						     if '1' = sCntDone then
							       stateNext <= DONE_EQU;
						     elsif '0' = sCntDone and sCntVal < "11" then
                            stateNext <= DONE_UEQU;
							  else
                            stateNext <= COMPUTE;							  
                       end if;
						 when DONE_UEQU =>
								equl <= '0';
						 when DONE_EQU  => 
								equl <= '1';
					end case;
			  end if;
        end if;
	 end process;

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

end Behavioral;

