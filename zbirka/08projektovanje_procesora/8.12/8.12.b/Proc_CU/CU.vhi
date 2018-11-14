
-- VHDL Instantiation Created from source file CU.vhd -- 15:25:51 11/13/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT CU
	PORT(
		iCLK : IN std_logic;
		iRSTn : IN std_logic;
		inJ : IN std_logic_vector(2 downto 0);
		inK : IN std_logic_vector(2 downto 0);          
		oQ : OUT std_logic_vector(2 downto 0);
		oQn : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_CU: CU PORT MAP(
		iCLK => ,
		iRSTn => ,
		inJ => ,
		inK => ,
		oQ => ,
		oQn => 
	);


