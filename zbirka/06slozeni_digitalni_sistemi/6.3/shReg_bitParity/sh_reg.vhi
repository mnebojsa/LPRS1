
-- VHDL Instantiation Created from source file sh_reg.vhd -- 16:20:07 11/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sh_reg
	PORT(
		iD : IN std_logic_vector(3 downto 0);
		iSe : IN std_logic;
		iLoad : IN std_logic;
		inReset : IN std_logic;
		iCLK : IN std_logic;
		iParity : IN std_logic;          
		oQ : OUT std_logic
		);
	END COMPONENT;

	Inst_sh_reg: sh_reg PORT MAP(
		iD => ,
		iSe => ,
		iLoad => ,
		inReset => ,
		iCLK => ,
		iParity => ,
		oQ => 
	);


