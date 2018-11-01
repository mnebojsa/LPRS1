----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:51 11/01/2018 
-- Design Name: 
-- Module Name:    sm_4_5 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
-- Moore State Machine descripted with following table:

--          | a1/alpha | b1/alpha | c1/beta | d1/beta | e1/gama |
-- _________|__________|__________|_________|_________|_________|
--     X1   |     a1   |    c1    |    e1   |    d1   |    e1   |  
-- _________|__________|__________|_________|_________|_________|
--     X2   |     b1   |    e1    |    a1   |    c1   |    a1   |  
-- _________|__________|__________|_________|_________|_________|
--     X3   |     c1   |    c1    |    e1   |    e1   |    b1   |  
-- _________|__________|__________|_________|_________|_________|

-- alpha = "00"
-- beta  = "01"
-- gama  = "10"
  		  		  		 
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

entity sm_4_5 is
    port(
	       CLK  : in  std_logic;
			 RSTn : in  std_logic;
	       iX   : in  std_logic_vector(1 downto 0);
			 oY   : out std_logic_vector(1 downto 0)
	      );
end sm_4_5;

architecture Behavioral of sm_4_5 is
    type states is (a1, b1, c1, d1, e1);
	 signal stateCurrent, stateNext : states;
	 signal sY : std_logic_vector(1 downto 0);
begin

    process(CLK) 
	 begin
	     if (rising_edge(CLK)) then
		       if ('0' = RSTn) then
				     stateCurrent <= a1;
					  sY <= "00";
				 else
				     if ("00" = iX) then
					      case stateCurrent is
							    when a1 => stateNext <=a1; sY <= "00";
								 when b1 => stateNext <=c1; sY <= "00";
								 when c1 => stateNext <=e1; sY <= "01";
								 when d1 => stateNext <=d1; sY <= "01";
								 when e1 => stateNext <=e1; sY <= "10";
							end case;	 
					  elsif ("01" = iX) then
					      case stateCurrent is
							    when a1 => stateNext <=b1; sY <= "00";
								 when b1 => stateNext <=e1; sY <= "00";
								 when c1 => stateNext <=a1; sY <= "01";
								 when d1 => stateNext <=c1; sY <= "01";
								 when e1 => stateNext <=a1; sY <= "10";
							end case;	 
					  elsif ("10" = iX) then
					      case stateCurrent is
							    when a1 => stateNext <=c1; sY <= "00";
								 when b1 => stateNext <=c1; sY <= "00";
								 when c1 => stateNext <=e1; sY <= "01";
								 when d1 => stateNext <=e1; sY <= "01";
								 when e1 => stateNext <=b1; sY <= "10";
							end case;	 
					  end if;

                 stateCurrent <= stateNext;						
				 end if;
		  end if;
	 end process;

    oY <= sY;
end Behavioral;

