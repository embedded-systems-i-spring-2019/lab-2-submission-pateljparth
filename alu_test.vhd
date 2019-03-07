----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 12:47:23 PM
-- Design Name: 
-- Module Name: alu_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_test is
    Port ( Opcode, A, B: in STD_LOGIC_VECTOR (3 downto 0);
            CLK : in std_logic;
           Output : out STD_LOGIC_VECTOR (3 DOWNTO 0));
end alu_test;

architecture Behavioral of alu_test is
begin
process(CLK, A, B, Opcode)

begin
case Opcode is
when "0000" => Output <= A + B;
when "0001" => Output <=A - B;
when "0010" => Output <= A + 1;
when "0011" => Output <= A-1;
when "0100" => Output <= 0 - A;
when "0101" =>  if (A > B) then Output <= '1' else Output <= '0';
when "0110" => Output <=  A sll 1;
when "0111" => Output <= A srl 1;
when "1000" => Output <= A sra 1;
when "1001" => Output <= not A;
when "1010" => Output <= A and B;
when "1011" => Output <= a or B;
when "1100" => Output <= A xor B;
when "1101" => Output <= A xnor B;
when "1110" => Output <= A nand B;
when "1111" => Output <= A nor B;
when others => Output <= '0';

end Behavioral;
