LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY decoder3_8 IS 
PORT(A2:IN STD_LOGIC;
     A1:IN STD_LOGIC;
     A0:IN STD_LOGIC;
     Y0: OUT STD_LOGIC;
     Y1: OUT STD_LOGIC;
     Y2: OUT STD_LOGIC;
     Y3: OUT STD_LOGIC;
     Y4: OUT STD_LOGIC;
     Y5: OUT STD_LOGIC;
     Y6: OUT STD_LOGIC;
     Y7: OUT STD_LOGIC
     );
 END decoder3_8;
ARCHITECTURE Behavioral OF decoder3_8 IS
BEGIN 
process(A2,A1,A0)
BEGIN
  IF A2='0' AND A1='0' AND A0='0' THEN Y0<='1';Y1<='0';Y2<='0';Y3<='0';Y4<='0';Y5<='0';Y6<='0';Y7<='0';
  ELSIF A2='0' AND A1='0' AND A0='1' THEN Y0<='0';Y1<='1';Y2<='0';Y3<='0';Y4<='0';Y5<='0';Y6<='0';Y7<='0';
  ELSIF A2='0' AND A1='1' AND A0='0' THEN Y0<='0';Y1<='0';Y2<='1';Y3<='0';Y4<='0';Y5<='0';Y6<='0';Y7<='0';
  ELSIF A2='0' AND A1='1' AND A0='1' THEN Y0<='0';Y1<='0';Y2<='0';Y3<='1';Y4<='0';Y5<='0';Y6<='0';Y7<='0';
  ELSIF A2='1' AND A1='0' AND A0='0' THEN Y0<='0';Y1<='0';Y2<='0';Y3<='0';Y4<='1';Y5<='0';Y6<='0';Y7<='0';
  ELSIF A2='1' AND A1='0' AND A0='1' THEN Y0<='0';Y1<='0';Y2<='0';Y3<='0';Y4<='0';Y5<='1';Y6<='0';Y7<='0';
  ELSIF A2='1' AND A1='1' AND A0='0' THEN Y0<='0';Y1<='0';Y2<='0';Y3<='0';Y4<='0';Y5<='0';Y6<='1';Y7<='0';
  ELSE  Y0<='0';Y1<='0';Y2<='0';Y3<='0';Y4<='0';Y5<='0';Y6<='0';Y7<='1';

END IF;
END PROCESS;
END Behavioral;