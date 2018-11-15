
-- VHDL Instantiation Created from source file decoder.vhd -- 09:34:07 11/19/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT decoder
	PORT(
		iX : IN std_logic_vector(1 downto 0);
		iEN : IN std_logic;          
		oY : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_decoder: decoder PORT MAP(
		iX => ,
		iEN => ,
		oY => 
	);


