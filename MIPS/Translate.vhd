LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Translate IS

  PORT ( Ins:IN STD_LOGIC_VECTOR(18 DOWNTO 0);
         RegDst: OUT STD_LOGIC;
         RegRead: OUT STD_LOGIC;
         ALUSrcA: OUT STD_LOGIC;
         MemRead: OUT STD_LOGIC;
         MemWrite: OUT STD_LOGIC;
         MemtoReg: OUT STD_LOGIC;
         Lord: OUT STD_LOGIC;
         IRWrite: OUT STD_LOGIC;
         PCWrite: OUT STD_LOGIC;
         PCWriteCond: OUT STD_LOGIC;
         PCControl: OUT STD_LOGIC;
         SW_B: OUT STD_LOGIC;
         RegControl: OUT STD_LOGIC;
         ALUOp: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
         ALUSrcB: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
         PCSrc: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)        
         );
END Translate;
ARCHITECTURE behave OF Translate IS
BEGIN
 PROCESS(Ins)
 BEGIN
  RegDst <=Ins(18);
  RegRead <=Ins(17);
  ALUSrcA <=Ins(16);
  MemRead <=Ins(15);
  MemWrite <=Ins(14);
  MemtoReg <=Ins(13);
  Lord <=Ins(12);
  IRWrite <=Ins(11);
  PCWrite <=Ins(10);
  PCWriteCond <=Ins(9);
  PCControl <=Ins(8);
  SW_B <=Ins(7);
  RegControl <=Ins(6);
  ALUOp <=Ins(5 DOWNTO 4);
  ALUSrcB <=Ins(3 DOWNTO 2);
  PCSrc <=Ins(1 DOWNTO 0);
  
 END PROCESS;
END behave;
               
        