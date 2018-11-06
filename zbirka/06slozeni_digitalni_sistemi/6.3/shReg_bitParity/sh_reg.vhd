----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:10 11/06/2018 
-- Design Name: 
-- Module Name:    sh_reg - Behavioral 
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

entity sh_reg is
    Port ( iD      : in  std_logic_vector(3 downto 0);
           iSe     : in  std_logic;
           iLoad   : in  std_logic;
           inReset : in  std_logic;
           iCLK    : in  std_logic;
			  iParity : in  std_logic;
           oQ      : out std_logic );
end sh_reg;

architecture Behavioral of sh_reg is
    signal sReg : std_logic_vector(4 downto 0);
	 signal sQ   : std_logic;
begin

    process(iCLK)
	 
	 begin
	     if (rising_edge(iCLK)) then
		      if (inReset = '0') then
				    sReg <= "00000";
				elsif (iLoad = '1') then
				    sReg <= iParity & iD;
				elsif (iSe = '1') then
				    sQ <= sReg(4);
					 sReg <= sReg(3 downto 0) & '0';
				else 
                sREg <= sReg;				
				end if;
		  end if;
	 end process;

    oQ <= sQ;
	 
end Behavioral;

