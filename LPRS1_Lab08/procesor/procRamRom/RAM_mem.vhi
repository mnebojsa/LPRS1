
-- VHDL Instantiation Created from source file RAM_mem.vhd -- 16:12:21 11/22/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RAM_mem
	PORT(
		iCLK : IN std_logic;
		iRST : IN std_logic;
		iADDR : IN std_logic_vector(3 downto 0);
		iDATA : IN std_logic_vector(15 downto 0);
		iWR : IN std_logic;
		iRD : IN std_logic;          
		oDATA : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_RAM_mem: RAM_mem PORT MAP(
		iCLK => ,
		iRST => ,
		iADDR => ,
		iDATA => ,
		oDATA => ,
		iWR => ,
		iRD => 
	);


