
-- VHDL Instantiation Created from source file DEC.vhd -- 14:47:33 11/20/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DEC
	PORT(
		iDATA : IN std_logic_vector(2 downto 0);
		iEN : IN std_logic;          
		oDec : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_DEC: DEC PORT MAP(
		iDATA => ,
		iEN => ,
		oDec => 
	);


