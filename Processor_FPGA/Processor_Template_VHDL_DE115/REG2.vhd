LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY REG2 IS
	PORT(
			CLK : IN STD_LOGIC;
			CLR : IN STD_LOGIC;
			LID : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			I : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			O : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
END REG2;

ARCHITECTURE main OF REG2 IS
BEGIN
	PROCESS(CLK, CLR)
	VARIABLE DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
		IF(CLR = '1') THEN
			DATA := x"0000";
			O <= x"0000";
		ELSIF(CLK'EVENT AND CLK = '1') THEN
			IF(LID(0) = '1') THEN
				DATA := I;
			ELSIF(LID(1) = '1') THEN
				DATA := DATA + x"1";
			ELSIF(LID(2) = '1') THEN
				DATA := DATA - x"1";
			END IF;
		END IF;
		O <= DATA;
	END PROCESS;
END main;