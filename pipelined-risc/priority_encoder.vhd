library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all; 
library ieee;
use ieee.numeric_std.all; 


entity pr_encoder is
	port( x_in : in std_logic_vector (7 downto 0);
		  x_out: out std_logic_vector(2 downto 0);
		  x_none: out std_logic);
end entity;

architecture enc_behave of pr_encoder is

begin
process (x_in) 
begin

	if(x_in(0) = '1') then
		x_out <= "000";
	elsif(x_in(1) = '1') then
		x_out <= "001";
	elsif(x_in(2) = '1') then
		x_out <= "010";
	elsif(x_in(3) = '1') then
		x_out <= "011";	
	elsif(x_in(4) = '1') then
		x_out <= "100";
	elsif(x_in(5) = '1') then
		x_out <= "101";
	elsif(x_in(6) = '1') then
		x_out <= "110";
	elsif(x_in(7) = '1') then
		x_out <= "111";
	else
		x_out <= "000";
	end if; 

	if (x_in = "00000000") then
		x_none <= '1';
	else
		x_none <= '0';
	end if;

end process;
end architecture enc_behave;
