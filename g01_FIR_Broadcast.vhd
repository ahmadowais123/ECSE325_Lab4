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
signal m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24 : signed(31 downto 0);
signal y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,y19,y20,y21,y22,y23,y24 : signed(31 downto 0);
signal a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24 : signed(31 downto 0);

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
			y24 <= (others => '0'); a24 <= (others => '0'); m24 <= (others => '0');
			y23 <= (others => '0'); a23 <= (others => '0'); m23 <= (others => '0');
			y22 <= (others => '0'); a22 <= (others => '0'); m22 <= (others => '0');
			y21 <= (others => '0'); a21 <= (others => '0'); m21 <= (others => '0');
			y20 <= (others => '0'); a20 <= (others => '0'); m20 <= (others => '0');
			y19 <= (others => '0'); a19 <= (others => '0'); m19 <= (others => '0');
			y18 <= (others => '0'); a18 <= (others => '0'); m18 <= (others => '0');
			y17 <= (others => '0'); a17 <= (others => '0'); m17 <= (others => '0');
			y16 <= (others => '0'); a16 <= (others => '0'); m16 <= (others => '0');
			y15 <= (others => '0'); a15 <= (others => '0'); m15 <= (others => '0');
			y14 <= (others => '0'); a14 <= (others => '0'); m14 <= (others => '0');
			y13 <= (others => '0'); a13 <= (others => '0'); m13 <= (others => '0');
			y12 <= (others => '0'); a12 <= (others => '0'); m12 <= (others => '0');
			y11 <= (others => '0'); a11 <= (others => '0'); m11<= (others => '0');
			y10 <= (others => '0'); a10 <= (others => '0'); m10 <= (others => '0');
			y9 <= (others => '0'); a9 <= (others => '0'); m9 <= (others => '0');
			y8 <= (others => '0'); a8 <= (others => '0'); m8 <= (others => '0');
			y7 <= (others => '0'); a7 <= (others => '0'); m7 <= (others => '0');
			y6 <= (others => '0'); a6 <= (others => '0'); m6 <= (others => '0');
			y5 <= (others => '0'); a5 <= (others => '0'); m5 <= (others => '0');
			y4 <= (others => '0'); a4 <= (others => '0'); m4 <= (others => '0');
			y3 <= (others => '0'); a3 <= (others => '0'); m3 <= (others => '0');
			y2 <= (others => '0'); a2 <= (others => '0'); m2 <= (others => '0');
			y1 <= (others => '0'); a1 <= (others => '0'); m1 <= (others => '0');
			y0 <= (others => '0'); a0 <= (others => '0'); m0 <= (others => '0');
			y <= (others => '0');

		elsif rising_edge(clk) then
			x_internal <= signed(x);

			y23 <= a24;
			y22 <= a23;
			y21 <= a22;
			y20 <= a21;
			y19 <= a20;
			y18 <= a19;
			y17 <= a18;
			y16 <= a17;
			y15 <= a16;
			y14 <= a15;
			y13 <= a14;
			y12 <= a13;
			y11 <= a12;
			y10 <= a11;
			y9 <= a10;
			y8 <= a9;
			y7 <= a8;
			y6 <= a7;
			y5 <= a6;
			y4 <= a5;
			y3 <= a4;
			y2 <= a3;
			y1 <= a2;
			y0 <= a1;

			y <= a0(31)&a0(30)&a0(29)&a0(28)&a0(27)&a0(26)&a0(25)&a0(24)&a0(23)&a0(22)&a0(21)&a0(20)&a0(19)&a0(18)&a0(17)&a0(16)&a0(15); 

		end if;
		
			m0 <= (x_internal * weight01); a0 <= m0 + y0;
			m1 <= (x_internal * weight02); a1 <= m1 + y1;
			m2 <= (x_internal * weight03); a2 <= m2 + y2;
			m3 <= (x_internal * weight04); a3 <= m3 + y3;
			m4 <= (x_internal * weight05); a4 <= m4 + y4;
			m5 <= (x_internal * weight06); a5 <= m5 + y5;
			m6 <= (x_internal * weight07); a6 <= m6 + y6;
			m7 <= (x_internal * weight08); a7 <= m7 + y7;
			m8 <= (x_internal * weight09); a8 <= m8 + y8;
			m9 <= (x_internal * weight10); a9 <= m9 + y9;
			m10 <= (x_internal * weight11); a10 <= m10 + y10;
			m11 <= (x_internal * weight12); a11 <= m11 + y11;
			m12 <= (x_internal * weight13); a12 <= m12 + y12;
			m13 <= (x_internal * weight14); a13 <= m13 + y13;
			m14 <= (x_internal * weight15); a14 <= m14 + y14;
			m15 <= (x_internal * weight16); a15 <= m15 + y15;
			m16 <= (x_internal * weight17); a16 <= m16 + y16;
			m17 <= (x_internal * weight18); a17 <= m17 + y17;
			m18 <= (x_internal * weight19); a18 <= m18 + y18;
			m19 <= (x_internal * weight20); a19 <= m19 + y19;
			m20 <= (x_internal * weight21); a20 <= m20 + y20;
			m21 <= (x_internal * weight22); a21 <= m21 + y21;
			m22 <= (x_internal * weight23); a22 <= m22 + y22;
			m23 <= (x_internal * weight24); a23 <= m23 + y23;
			m24 <= (x_internal * weight25); a24 <= m24;

	end process;
end implementation;