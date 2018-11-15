
-- VHDL Instantiation Created from source file ALU.vhd -- 09:24:55 11/19/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		iA : IN std_logic_vector(3 downto 0);
		iB : IN std_logic_vector(3 downto 0);
		iSEL : IN std_logic_vector(2 downto 0);          
		oH : OUT std_logic_vector(3 downto 0);
		oC : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		iA => ,
		iB => ,
		iSEL => ,
		oH => ,
		oC => 
	);


