
-- VHDL Instantiation Created from source file mux4x1.vhd -- 18:18:22 11/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mux4x1
	PORT(
		iD : IN std_logic_vector(15 downto 0);
		iSel : IN std_logic_vector(1 downto 0);          
		oY : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_mux4x1: mux4x1 PORT MAP(
		iD => ,
		iSel => ,
		oY => 
	);


