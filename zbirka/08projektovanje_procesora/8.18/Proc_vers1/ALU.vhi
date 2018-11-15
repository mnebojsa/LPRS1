
-- VHDL Instantiation Created from source file ALU.vhd -- 11:32:03 11/16/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		iSel : IN std_logic_vector(3 downto 0);
		iA : IN std_logic_vector(3 downto 0);
		iB : IN std_logic_vector(3 downto 0);
		iC : IN std_logic;          
		oH : OUT std_logic_vector(3 downto 0);
		oC : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		iSel => ,
		iA => ,
		iB => ,
		iC => ,
		oH => ,
		oC => 
	);


