----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:48 11/14/2018 
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
        --iOperation(add,subtract)
    port( iCLK    : in  std_logic;
	       iSelAdd : in  std_logic;
          iSelSub : in  std_logic;
			 iA      : in  std_logic_vector(4 downto 0);
			 iB      : in  std_logic_vector(4 downto 0);
			 iC      : in  std_logic;
			 oA      : out std_logic_vector(4 downto 0);
			 oB      : out std_logic_vector(4 downto 0);
          oOper   : out std_logic_vector(2 downto 0) );
end CU;

architecture Behavioral of CU is
    type stateM is (IDLE, CONV_B_SIGN, CHECK_SIGNS, ADD, SUB, CHECK_CARRY, Sec_COMPLEMENT);
	 signal stateCurrent, stateNext : stateM;

    signal soA    : std_logic_vector(4 downto 0);
    signal soB    : std_logic_vector(4 downto 0);	
    signal soOper : std_logic_vector(2 downto 0);	

    signal siA    : std_logic_vector(4 downto 0);
    signal siB    : std_logic_vector(4 downto 0);	 
begin

change_state_process:
    process(iCLK)
	 begin
	     if rising_edge(iCLK) then
		      stateCurrent <= stateNext;
		  end if;
	 end process;

set_next_state_process:	 
    process(stateCurrent, iSelAdd, iSelSub, iA, iB, iC)
	 begin
	     case stateCurrent is
		      when IDLE           =>
				    if (iSelAdd xor iSelSub) = '0' then
					     stateNext <= IDLE;
					 elsif iSelAdd = '1' then
                    stateNext <=	CHECK_SIGNS;
						  soA <= iA;
						  soB <= iB;
                elsif iSelSub = '1' then
                    stateNext <=	CONV_B_SIGN;
						  soA <= iA;
						  soB <= iB;
                end if; 						  
		      when CONV_B_SIGN    =>
                stateNext <=	CHECK_SIGNS;
                soB(4) <= not(iB(4)); 					 
		      when CHECK_SIGNS    =>
				    if iA(4) = iB(4) then
					     stateNext <=	ADD;
					 else
         			  stateNext <=	SUB;
                end if;						  
		      when ADD            => 
				    stateNext <= IDLE;
		      when SUB            => 
				    stateNext <= CHECK_CARRY;
		      when CHECK_CARRY    => 
				    if iC = '0' then
					     stateNext <=IDLE;
					 else
                    stateNext <=Sec_COMPLEMENT;
                end if;					 
		      when Sec_COMPLEMENT =>
                stateNext <=IDLE;
        end case;					 
	 end process;

set_current_state_process:	 
    process(stateCurrent, soA, soB)
	 begin
	     case stateCurrent is
		      when IDLE           => 
                soOper <= "ZZZ";			
		      when CONV_B_SIGN    =>
				    soOper <= "ZZZ";
		      when CHECK_SIGNS    =>
                soOper <= "ZZZ";
		      when ADD            =>
					 soOper <= "000";	
	 oA(3 downto 0) <= soA(3 downto 0);
	 oB(3 downto 0) <= soB(3 downto 0);
	 oA(4)          <= soA(4);
	 oB(4)          <= soB(4);	 
    oOper          <= soOper;					 
		      when SUB            =>
					 soOper <= "001";	
	 oA(3 downto 0) <= soA(3 downto 0);
	 oB(3 downto 0) <= soB(3 downto 0);
	 oA(4)          <= soA(4);
	 oB(4)          <= soB(4);	 
    oOper          <= soOper;					 
		      when CHECK_CARRY    =>
				
		      when Sec_COMPLEMENT =>
					 soOper <= "110";	
	 oA(3 downto 0) <= soA(3 downto 0);
	 oB(3 downto 0) <= soB(3 downto 0);
	 oA(4)          <= soA(4);
	 oB(4)          <= soB(4);	 
    oOper          <= soOper;					 
        end case;					 
	 end process;

--	 oA(3 downto 0) <= soA(3 downto 0);
--	 oB(3 downto 0) <= soB(3 downto 0);
--	 oA(4)          <= soA(4);
--	 oB(4)          <= soB(4);	 
--    oOper          <= soOper;
	 
end Behavioral;

