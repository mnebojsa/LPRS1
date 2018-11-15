
-- VHDL Instantiation Created from source file reg2b.vhd -- 11:56:39 11/16/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reg2b
	PORT(
		iCLK : IN std_logic;
		iRSTn : IN std_logic;
		iWR : IN std_logic;
		iZero : IN std_logic;
		iCarry : IN std_logic;          
		oData : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_reg2b: reg2b PORT MAP(
		iCLK => ,
		iRSTn => ,
		iWR => ,
		iZero => ,
		iCarry => ,
		oData => 
	);


