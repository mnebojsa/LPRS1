----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:25 11/08/2018 
-- Design Name: 
-- Module Name:    lifo - Behavioral 
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

entity lifo is
    port( iCLK   : in  std_logic;
          iRST   : in  std_logic;
          iPUSH  : in  std_logic;
          iPOP    : in  std_logic;
          iDATA  : in  std_logic_vector(7 downto 0);
          oDATA  : out std_logic_vector(7 downto 0);
          oEMPTY : out std_logic;
          oFULL  : out std_logic );
end lifo;

architecture Behavioral of lifo is
    type fifo is array (9 downto 0) of std_logic_vector(7 downto 0);
    signal s_fifo   : fifo := (others => (others => '0'));
	 signal soDATA   : std_logic_vector(7 downto 0);
	 signal soEMPTY  : std_logic;
	 signal soFULL   : std_logic;
	 signal sFifoTop : integer range 0 to 10;
begin

    process(iCLK)
	     variable v_fifo : fifo := (others => (others => '0'));
	 begin
	     if (rising_edge(iCLK)) then
		      if (iRST = '1') then
				    s_fifo   <= (others => (others => '0'));
					 soDATA   <= (others => '0');
					 soEMPTY  <= '1';
					 soFULL   <= '0';
					 sFifoTop <=  1;
				else
				
				   --SET FIFO IS FULL SIGNAL
				    if (sFifoTop = 10) then
					     soFULL <= '1';
					 else
                    soFULL <= '0';					 
					 end if;
					 
					 --SET FIFO IS EMPTY SIGNAL
					 if (sFifoTop - 1 = 0) then
					     soEMPTY <= '1';
					 else
                    soEMPTY <= '0';					 
					 end if;
					 
					 --WRITE IN FIFO REG
                if (iPUSH = '1' and soFULL = '0') then
					     s_fifo(sFifoTop - 1) <= iDATA;
					     sFifoTop <= sFifoTop + 1;
					 end if;
 
                --READ FROM FIFO REG
                if (iPOP = '1' and soEMPTY = '0') then
                    soDATA <= s_fifo(sFifoTop -1);
						  s_fifo(sFifoTop -1) <= (others => '0'); 
						  sFifoTop <= sFifoTop - 1;
					 end if;
					 
				end if;
		  end if;
	 end process;

    oDATA  <= soDATA;
	 oEMPTY <= soEMPTY; 
    oFULL  <= soFULL;
	 
end Behavioral;
