library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--describe Full adder interface

entity Adder is
	
	port 
	(
	a : in std_logic;
	b : in std_logic;
	Cin : in std_logic;
	sum : out std_logic;
	Cout : out std_logic
	);
	
end Adder;

--Device implementation

architecture Full_Adder of Adder is

	begin
		sum <= a XOR a XOR Cin;
		Cout <= (a AND b) OR (Cin AND a) OR (Cin AND b);
 
end Full_Adder;