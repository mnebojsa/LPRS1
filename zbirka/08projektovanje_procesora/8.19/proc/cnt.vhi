
-- VHDL Instantiation Created from source file cnt.vhd -- 10:12:48 11/19/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT cnt
	PORT(
		iCLK : IN std_logic;
		iRESET : IN std_logic;
		iINC : IN std_logic;
		iDEC : IN std_logic;          
		oQ : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_cnt: cnt PORT MAP(
		iCLK => ,
		iRESET => ,
		iINC => ,
		iDEC => ,
		oQ => 
	);


