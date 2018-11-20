
-- VHDL Instantiation Created from source file procesor.vhd -- 16:11:52 11/22/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT procesor
	PORT(
		iCLK : IN std_logic;
		iRST : IN std_logic;
		iRUN : IN std_logic;
		iINSTR : IN std_logic_vector(9 downto 0);
		iDATA : IN std_logic_vector(15 downto 0);          
		oBUS : OUT std_logic_vector(15 downto 0);
		oPC : OUT std_logic_vector(15 downto 0);
		oDADDR : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_procesor: procesor PORT MAP(
		iCLK => ,
		iRST => ,
		iRUN => ,
		iINSTR => ,
		iDATA => ,
		oBUS => ,
		oPC => ,
		oDADDR => 
	);


