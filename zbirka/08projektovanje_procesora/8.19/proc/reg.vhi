
-- VHDL Instantiation Created from source file reg.vhd -- 10:38:49 11/19/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reg
	PORT(
		iCLK : IN std_logic;
		iCLR : IN std_logic;
		iCE : IN std_logic;
		iD : IN std_logic_vector(3 downto 0);          
		oQ : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_reg: reg PORT MAP(
		iCLK => ,
		iCLR => ,
		iCE => ,
		iD => ,
		oQ => 
	);


