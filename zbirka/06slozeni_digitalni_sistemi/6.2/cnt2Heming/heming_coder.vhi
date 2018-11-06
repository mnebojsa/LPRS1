
-- VHDL Instantiation Created from source file heming_coder.vhd -- 15:50:31 11/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT heming_coder
	PORT(
		iCNT : IN std_logic_vector(3 downto 0);          
		oQ : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_heming_coder: heming_coder PORT MAP(
		iCNT => ,
		oQ => 
	);


