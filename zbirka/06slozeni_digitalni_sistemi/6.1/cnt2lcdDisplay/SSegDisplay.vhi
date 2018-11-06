
-- VHDL Instantiation Created from source file SSegDisplay.vhd -- 14:27:36 11/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SSegDisplay
	PORT(
		sCNT : IN std_logic_vector(3 downto 0);
		oSSeg : IN std_logic_vector(6 downto 0);       
		);
	END COMPONENT;

	Inst_SSegDisplay: SSegDisplay PORT MAP(
		sCNT => ,
		oSSeg => 
	);


