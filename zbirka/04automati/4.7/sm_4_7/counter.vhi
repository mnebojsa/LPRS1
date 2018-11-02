
-- VHDL Instantiation Created from source file counter.vhd -- 16:17:02 11/01/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter
	PORT(
		iEn : IN std_logic;
		iCLK : IN std_logic;
		iRSTn : IN std_logic;          
		oCnt : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_counter: counter PORT MAP(
		iEn => ,
		iCLK => ,
		iRSTn => ,
		oCnt => 
	);


