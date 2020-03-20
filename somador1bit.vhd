LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY somador1bit IS
PORT (
		cin : IN STD_LOGIC;
		a, b : IN STD_LOGIC;
		s : OUT STD_LOGIC;
		cout : OUT STD_LOGIC
		);
END somador1bit;

ARCHITECTURE comportamento OF somador1bit IS
BEGIN
	s <= a XOR b XOR Cin ;
	cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
END comportamento;