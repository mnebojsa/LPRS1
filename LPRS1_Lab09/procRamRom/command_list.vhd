--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package command_list is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

    constant MV   : std_logic_vector(3 downto 0) := "0000";
	constant MVI  : std_logic_vector(3 downto 0) := "0001";
    constant ADD  : std_logic_vector(3 downto 0) := "0010";	 
    constant SUB  : std_logic_vector(3 downto 0) := "0011";
	
	constant CLR  : std_logic_vector(3 downto 0) := "0100";
    constant NOP  : std_logic_vector(3 downto 0) := "0111";
	
    constant LOAD : std_logic_vector(3 downto 0) := "1000";
    constant ST   : std_logic_vector(3 downto 0) := "1001";		 
    constant MVNZ : std_logic_vector(3 downto 0) := "1010";
    constant MVA  : std_logic_vector(3 downto 0) := "1110";
	 
    constant MUL  : std_logic_vector(3 downto 0) := "1111";	 
	 
    constant R0   : std_logic_vector(3 downto 0) := "0000";
	constant R1   : std_logic_vector(3 downto 0) := "0001";
    constant R2   : std_logic_vector(3 downto 0) := "0010";	 
    constant R3   : std_logic_vector(3 downto 0) := "0011";
    constant R4   : std_logic_vector(3 downto 0) := "0100";
    constant R5   : std_logic_vector(3 downto 0) := "0101";		 
    constant R6   : std_logic_vector(3 downto 0) := "0110";	 
    constant R7   : std_logic_vector(3 downto 0) := "0111";	
	constant ACC  : std_logic_vector(3 downto 0) := "1000";
	constant G1   : std_logic_vector(3 downto 0) := "1001";	
	constant G0   : std_logic_vector(3 downto 0) := "1010";
	constant MEM  : std_logic_vector(3 downto 0) := "1011";	
end command_list;

package body command_list is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end command_list;
