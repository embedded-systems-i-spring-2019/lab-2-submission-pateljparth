----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 11:58:47 AM
-- Design Name: 
-- Module Name: ripple_adder - Behavioral
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


entity ripple_adder is
    Port ( A,B,C_in : in STD_LOGIC;
              S, C_out : out STD_LOGIC);
end ripple_adder;

architecture Behavioral of ripple_adder is
    signal ABX_out, ACA_out, ABA_out: STD_LOGIC;

begin
    ABX_out <=  A xor B;
    S <= ABX_out xor C_in;
    ACA_out <= ABX_out and C_in;
    ABA_out <= A and B;
    C_out <= ABA_out or ACA_out;
       

end Behavioral;
