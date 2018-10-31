----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:38 10/30/2018 
-- Design Name: 
-- Module Name:    dec3x8 - Behavioral 
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

entity dec3x8 is
    Port ( iC : in  std_logic;
           iB : in  std_logic;
           iA : in  std_logic;
           iE : in  std_logic;
           oD : out  std_logic_vector (7 downto 0)
			  );
end dec3x8;

architecture Behavioral of dec3x8 is
    component dec2x4
	     port ( iB : in   std_logic;
               iA : in   std_logic;
               iE : in   std_logic;
               oD : out  std_logic_vector (3 downto 0)
					);
    end component;
	 
	 signal sSel  : std_logic;
	 signal sSeln : std_logic;
begin
    sSeln <= not(iC) and iE;
	 sSel  <=     iC  and iE;
  
    G1: dec2x4
	     port map (iB => iB,
		            iA => iA,
						iE =>	sSeln,
						oD => oD(3 downto 0)
						);
    G2: dec2x4
	     port map (iB => iB,
		            iA => iA,
						iE =>	sSel,
						oD => oD(7 downto 4)
						);
end Behavioral;

