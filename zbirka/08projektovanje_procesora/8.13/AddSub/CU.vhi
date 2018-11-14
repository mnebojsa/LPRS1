
-- VHDL Instantiation Created from source file CU.vhd -- 12:33:46 11/14/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT CU
	PORT(
		iCLK : IN std_logic;
		iSelAdd : IN std_logic;
		iSelSub : IN std_logic;
		iA : IN std_logic_vector(4 downto 0);
		iB : IN std_logic_vector(4 downto 0);
		iC : IN std_logic;          
		oA : OUT std_logic_vector(3 downto 0);
		oB : OUT std_logic_vector(3 downto 0);
		oOper : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_CU: CU PORT MAP(
		iCLK => ,
		iSelAdd => ,
		iSelSub => ,
		iA => ,
		iB => ,
		iC => ,
		oA => ,
		oB => ,
		oOper => 
	);


