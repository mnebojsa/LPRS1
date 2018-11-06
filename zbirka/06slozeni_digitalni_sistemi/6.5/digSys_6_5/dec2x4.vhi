
-- VHDL Instantiation Created from source file dec2x4.vhd -- 17:24:08 11/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dec2x4
	PORT(
		iWe : IN std_logic;
		iAddress : IN std_logic_vector(1 downto 0);          
		oQ : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_dec2x4: dec2x4 PORT MAP(
		iWe => ,
		iAddress => ,
		oQ => 
	);


