
-- VHDL Instantiation Created from source file CPU.vhd -- 12:16:44 12/04/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT CPU
	PORT(
		iCLK : IN std_logic;
		iRUN : IN std_logic;
		inRST : IN std_logic;
		iINST : IN std_logic_vector(9 downto 6);
		iG_SH_val : IN std_logic;          
		oPC_CLEAR : OUT std_logic;
		oPC_EN : OUT std_logic;
		oRESULT_WE : OUT std_logic;
		oALU_SEL : OUT std_logic_vector(1 downto 0);
		oSH_EN : OUT std_logic;
		oG1_WE : OUT std_logic;
		oG0_WE : OUT std_logic
		);
	END COMPONENT;

	Inst_CPU: CPU PORT MAP(
		iCLK => ,
		iRUN => ,
		inRST => ,
		iINST => ,
		iG_SH_val => ,
		oPC_CLEAR => ,
		oPC_EN => ,
		oRESULT_WE => ,
		oALU_SEL => ,
		oSH_EN => ,
		oG1_WE => ,
		oG0_WE => 
	);


