
-- VHDL Instantiation Created from source file reg.vhd -- 17:35:57 11/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reg
	PORT(
		iCLK : IN std_logic;
		iWe : IN std_logic;
		iRSTn : IN std_logic;
		iD : IN std_logic_vector(3 downto 0);          
		oRegVal : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_reg: reg PORT MAP(
		iCLK => ,
		iWe => ,
		iRSTn => ,
		iD => ,
		oRegVal => 
	);


