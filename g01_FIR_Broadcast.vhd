library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity g01_FIR_Broadcast is
	port(	x: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			rst: std_logic;
			y: out std_logic_vector(16 downto 0));
end g01_FIR_Broadcast;

architecture implementation of g01_FIR_Broadcast is
signal x_internal : signed(15 downto 0);
signal m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24 : signed(31 downto 0) := (others => '0');
signal y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,y19,y20,y21,y22,y23,y24 : signed(31 downto 0) := (others => '0');

constant weight01 : signed(15 downto 0) := "0000001001110011";
constant weight02 : signed(15 downto 0) := "0000000000010001";
constant weight03 : signed(15 downto 0) := "1111111111010010";
constant weight04 : signed(15 downto 0) := "1111111011011101";
constant weight05 : signed(15 downto 0) := "0000001100011010";
constant weight06 : signed(15 downto 0) := "1111110110100111";
constant weight07 : signed(15 downto 0) := "1111110000001101";
constant weight08 : signed(15 downto 0) := "0000110110111101";
constant weight09 : signed(15 downto 0) := "1110110001110010";
constant weight10 : signed(15 downto 0) := "0000110111111000";
constant weight11 : signed(15 downto 0) := "0000001100001000";
constant weight12 : signed(15 downto 0) := "1110101000001010";
constant weight13 : signed(15 downto 0) := "0001111000110100";
constant weight14 : signed(15 downto 0) := "1110101000001010";
constant weight15 : signed(15 downto 0) := "0000001100001000";
constant weight16 : signed(15 downto 0) := "0000110111111000";
constant weight17 : signed(15 downto 0) := "1110110001110010";
constant weight18 : signed(15 downto 0) := "0000110110111101";
constant weight19 : signed(15 downto 0) := "1111110000001101";
constant weight20 : signed(15 downto 0) := "1111110110100111";
constant weight21 : signed(15 downto 0) := "0000001100011010";
constant weight22 : signed(15 downto 0) := "1111111011011101";
constant weight23 : signed(15 downto 0) := "1111111111010010";
constant weight24 : signed(15 downto 0) := "0000000000010001";
constant weight25 : signed(15 downto 0) := "0000001001110011";

begin
FIR_process: process(clk, rst)
	begin
		if rst = '1' then

			y <= (others => '0');
			x_internal <= (others => '0');

		elsif rising_edge(clk) then
			x_internal <= signed(x);

			y23 <= m24;
			y22 <= m23;
			y21 <= m22;
			y20 <= m21;
			y19 <= m20;
			y18 <= m19;
			y17 <= m18;
			y16 <= m17;
			y15 <= m16;
			y14 <= m15;
			y13 <= m14;
			y12 <= m13;
			y11 <= m12;
			y10 <= m11;
			y9 <= m10;
			y8 <= m9;
			y7 <= m8;
			y6 <= m7;
			y5 <= m6;
			y4 <= m5;
			y3 <= m4;
			y2 <= m3;
			y1 <= m2;
			y0 <= m1;

			y <= m0(31)&m0(30)&m0(29)&m0(28)&m0(27)&m0(26)&m0(25)&m0(24)&m0(23)&m0(22)&m0(21)&m0(20)&m0(19)&m0(18)&m0(17)&m0(16)&m0(15); 

		end if;
		
			m0 <= (x_internal * weight01) + y0;
			m1 <= (x_internal * weight02) + y1;
			m2 <= (x_internal * weight03) + y2;
			m3 <= (x_internal * weight04) + y3;
			m4 <= (x_internal * weight05) + y4;
			m5 <= (x_internal * weight06) + y5;
			m6 <= (x_internal * weight07) + y6;
			m7 <= (x_internal * weight08) + y7;
			m8 <= (x_internal * weight09) + y8;
			m9 <= (x_internal * weight10) + y9;
			m10 <= (x_internal * weight11) + y10;
			m11 <= (x_internal * weight12) + y11;
			m12 <= (x_internal * weight13) + y12;
			m13 <= (x_internal * weight14) + y13;
			m14 <= (x_internal * weight15) + y14;
			m15 <= (x_internal * weight16) + y15;
			m16 <= (x_internal * weight17) + y16;
			m17 <= (x_internal * weight18) + y17;
			m18 <= (x_internal * weight19) + y18;
			m19 <= (x_internal * weight20) + y19;
			m20 <= (x_internal * weight21) + y20;
			m21 <= (x_internal * weight22) + y21;
			m22 <= (x_internal * weight23) + y22;
			m23 <= (x_internal * weight24) + y23;
			m24 <= (x_internal * weight25);

	end process;
end implementation;