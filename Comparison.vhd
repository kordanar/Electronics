library ieee;
use ieee.std_logic_1164.all;
entity compareAB is
port(
a, b : in std_logic_vector(3 downto 0);
agb, aeb, alb: out std_logic);
end compareAB;
architecture arc of compareAB is
	signal result: std_logic_vector(2 downto 0);
begin 
	process(a,b)
	begin
	if a<b then
		result <= "001";
	elsif a=b then
		result <= "010";
	elsif a>b then 
		result <= "100";
	else 
		result <= "000";
	end if;
	agb <= result(2);
	aeb <= result(1);
	alb <= result(0);
	end process;
	end arc;
	
	
	