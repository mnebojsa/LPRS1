-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT ALU
          PORT( iX      : in  std_logic_vector(15 downto 0);
	             iY      : in  std_logic_vector(15 downto 0);
			       iSel    : in  std_logic_vector(1  downto 0);
			       oCarry  : out std_logic;
			       oResult : out std_logic_vector(15 downto 0));
          END COMPONENT;

          SIGNAL  iSel    : std_logic_vector(1  downto 0) := (others => '0');
	       SIGNAL  iX      : std_logic_vector(15 downto 0) := (others => '0');
			 SIGNAL  iY      : std_logic_vector(15 downto 0) := (others => '0');
			 SIGNAL  oResult : std_logic_vector(15 downto 0) := (others => '0');
          SIGNAL  oCarry  : std_logic                     := '0';

  BEGIN

  -- Component Instantiation
          uut: ALU PORT MAP(
                  iX      => iX,
	               iY      => iY,
			         iSel    => iSEL,
			         oCarry  => oCarry,
			         oResult => oResult
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here
            iX <= "0000000110001111";
				iY <= "0000000011100011";
				iSel <= "00";
				
				wait for 20 ns;
				    iSel <= "00";
				wait for 20 ns;
				    iSel <= "01";
				wait for 20 ns;
				    iSel <= "10";
				wait for 20 ns;
				    iSel <= "11";
iY <= oResult;					 
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;