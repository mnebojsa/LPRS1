
-- VHDL Instantiation Created from source file mnozac.vhd -- 12:14:55 12/04/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mnozac
	PORT(
		iCLK : IN std_logic;
		iRST : IN std_logic;
		iA : IN std_logic_vector(3 downto 0);
		iB : IN std_logic_vector(3 downto 0);          
		oRes : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_mnozac: mnozac PORT MAP(
		iCLK => ,
		iRST => ,
		iA => ,
		iB => ,
		oRes => 
	);


