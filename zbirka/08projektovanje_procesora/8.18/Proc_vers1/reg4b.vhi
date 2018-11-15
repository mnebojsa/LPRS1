
-- VHDL Instantiation Created from source file reg4b.vhd -- 11:40:41 11/16/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reg4b
	PORT(
		iCLK : IN std_logic;
		iRSTn : IN std_logic;
		iWR : IN std_logic;
		iData : IN std_logic_vector(3 downto 0);          
		oData : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_reg4b: reg4b PORT MAP(
		iCLK => ,
		iRSTn => ,
		iWR => ,
		iData => ,
		oData => 
	);


