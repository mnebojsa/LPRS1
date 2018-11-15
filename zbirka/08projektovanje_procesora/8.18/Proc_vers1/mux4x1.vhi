
-- VHDL Instantiation Created from source file mux4x1.vhd -- 11:25:04 11/16/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mux4x1
	PORT(
		iX : IN std_logic_vector(3 downto 0);
		iSel : IN std_logic_vector(1 downto 0);          
		oFnc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_mux4x1: mux4x1 PORT MAP(
		iX => ,
		iSel => ,
		oFnc => 
	);


