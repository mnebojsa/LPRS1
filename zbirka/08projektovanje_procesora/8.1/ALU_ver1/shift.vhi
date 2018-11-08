
-- VHDL Instantiation Created from source file shift.vhd -- 15:06:19 11/08/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT shift
	PORT(
		iFnc : IN std_logic_vector(3 downto 0);
		iSel : IN std_logic_vector(1 downto 0);          
		oH : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_shift: shift PORT MAP(
		iFnc => ,
		iSel => ,
		oH => 
	);


