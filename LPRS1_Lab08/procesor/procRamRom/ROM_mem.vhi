
-- VHDL Instantiation Created from source file ROM_mem.vhd -- 16:36:06 11/22/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ROM_mem
	PORT(
		iADDR : IN std_logic_vector(15 downto 0);          
		oDATA : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_ROM_mem: ROM_mem PORT MAP(
		oDATA => ,
		iADDR => 
	);


