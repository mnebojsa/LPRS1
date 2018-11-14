----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:56:35 11/13/2018 
-- Design Name: 
-- Module Name:    Proc_UC - Behavioral 
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

entity Proc_UC is
    port( iCLK   : in  std_logic;
	       iX     : in  std_logic;
          iY     : in  std_logic;
          oState : out std_logic_vector(7 downto 0) );
end Proc_UC;

architecture Behavioral of Proc_UC is
     type stateM is (T0, T1,  T2, T3, T4, T5, T6, T7);
	  signal stateCurrent, stateNext : stateM;
	  
	  signal soState : std_logic_vector(7 downto 0);
begin

     process(iCLK)
	  begin
	      if rising_edge(iCLK) then
			    stateCurrent <= stateNext;
			end if;
	  end process;
	  
     process(stateCurrent, iX, iY)
	  begin
         case stateCurrent is
			    when T0 =>
				     if iX = '0' then
					      stateNext <= T0;
					  else
					      stateNext <= T1;
					  end if;
                 soState <= "00000001";					  
			    when T1 =>
				     stateNext <= T2;
					  soState <= "00000010";
			    when T2 =>
				     if iY = '0' then
					      stateNext <= T5;
					  else
					      stateNext <= T3;
					  end if;
                 soState <= "00000100";					  
			    when T3 =>
				     stateNext <= T4;
					  soState <= "00001000";
			    when T4 =>
				     stateNext <= T7;
                 soState <= "00010000";					  
			    when T5 =>
				     stateNext <= T6;
                 soState <= "00100000";					  
			    when T6 =>
				     stateNext <= T7;
                 soState <= "01000000"; 					  
			    when T7 =>
				     stateNext <= T1;
                 soState <= "10000000";					  
			end case;	 				 				 				 				 				 				 				 
	  end process;	  
	  
	  oState <= soState;

end Behavioral;

