
-- VHDL Instantiation Created from source file cntr.vhd -- 14:15:54 11/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT cntr
	PORT(
		iCLK : IN std_logic;
		inReset_n : IN std_logic;
		iEn_n : IN std_logic;          
		SSeg : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_cntr: cntr PORT MAP(
		iCLK => ,
		inReset_n => ,
		iEn_n => ,
		SSeg => 
	);


