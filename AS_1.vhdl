library ieee;
use ieee.std_logic_1164.all;

--Use the Gates package already uploaded in my previous repository named AND_using_NAND.
library work;
use work.Gates.all;

entity AS_1 is
	port(A3,A2,A1,A0,B3,B2,B1,B0,M:in std_logic;
		  Cout,S3,S2,S1,S0:out std_logic);
end entity;

architecture struct of AS_1 is
	component FULLADDER_1 is
	port(in1,in2,cin:in std_logic;
		  out1,out2:out std_logic);
   end component;

   signal sig1,sig2,sig3,sig4,Cout0,Cout1,Cout2:std_logic;
	
begin
	inst0: XOR_2 port map (A=>B0,B=>M,Y=>sig1);
	inst1: FULLADDER_1  port map(in1=>A0,in2=>sig1,cin=>M,out1=>S0,out2=>Cout0);
	inst2: XOR_2 port map (A=>B1,B=>M,Y=>sig2);
	inst3: FULLADDER_1  port map(in1=>A1,in2=>sig2,cin=>Cout0,out1=>S1,out2=>Cout1);
	inst4: XOR_2 port map (A=>B2,B=>M,Y=>sig3);
	inst5: FULLADDER_1  port map(in1=>A2,in2=>sig3,cin=>Cout1,out1=>S2,out2=>Cout2);
	inst6: XOR_2 port map (A=>B3,B=>M,Y=>sig4);
	inst7: FULLADDER_1  port map(in1=>A3,in2=>sig4,cin=>Cout2,out1=>S3,out2=>Cout);

end architecture;
