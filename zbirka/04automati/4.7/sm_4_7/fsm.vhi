
-- VHDL Instantiation Created from source file fsm.vhd -- 15:15:54 11/01/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT fsm
	PORT(
		CLK : IN std_logic;
		RSTn : IN std_logic;
		start : IN std_logic;
		BPE : IN std_logic;          
		S : OUT std_logic_vector(1 downto 0);
		done : OUT std_logic;
		equl : OUT std_logic
		);
	END COMPONENT;

	Inst_fsm: fsm PORT MAP(
		CLK => ,
		RSTn => ,
		start => ,
		BPE => ,
		S => ,
		done => ,
		equl => 
	);


