LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador4bits IS
PORT (
		cin : IN STD_LOGIC;
		a, b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		cout : OUT STD_LOGIC);
END somador4bits;

architecture soma of somador4bits is
signal c: std_LOGIC_VECTOR(3 downto 1);

component somador1bit IS
PORT (
		cin : IN STD_LOGIC;
		a, b : IN STD_LOGIC;
		s : OUT STD_LOGIC;
		cout : OUT STD_LOGIC
		);
END component;
begin
SC0: somador1bit port map (cin, a(0), b(0), s(0), c(1));
SC1: somador1bit port map (c(1), a(1), b(1), s(1), c(2));
SC2: somador1bit port map (c(2), a(2), b(2), s(2), c(3));
SC3: somador1bit port map (c(3), a(3), b(2), s(3), cout);

end soma;
