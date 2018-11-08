-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT ALU
          PORT(
                  iSel : in  std_logic_vector(3 downto 0);
	               iA   : in  std_logic_vector(3 downto 0);
			         iB   : in  std_logic_vector(3 downto 0);
			         oH   : out std_logic_vector(3 downto 0);
                  oC   : out std_logic );
          END COMPONENT;

          SIGNAL  iSel : std_logic_vector(3 downto 0) := (others => '0');
	       SIGNAL  iA   : std_logic_vector(3 downto 0) := (others => '0');
			 SIGNAL  iB   : std_logic_vector(3 downto 0) := (others => '0');
			 SIGNAL  oH   : std_logic_vector(3 downto 0) := (others => '0');
          SIGNAL  oC   : std_logic                    := '0';

  BEGIN

  -- Component Instantiation
          uut: ALU PORT MAP(
                  iSel => iSel,
	               iA   => iA,
			         iB   => iB,
			         oH   => oH,
                  oC   => oC
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here
            iA <= "0111";
				iB <= "0011";
				iSel <= "0000";
				
				wait for 20 ns;
				    iSel <= "1100";
				wait for 20 ns;
				    iSel <= "1101";
				wait for 20 ns;
				    iSel <= "1110";
				wait for 20 ns;
				    iSel <= "1111";					 
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
