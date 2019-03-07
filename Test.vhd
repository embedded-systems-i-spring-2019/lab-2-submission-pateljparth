----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 01:35:08 PM
-- Design Name: 
-- Module Name: Test - Behavioral
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



 ENTITY Test IS
END Test;

ARCHITECTURE behavior OF Test IS

 COMPONENT test

 PORT(
 A : IN std_logic;
 B : IN std_logic;
 Cin : IN std_logic;
 S : OUT std_logic;
Cout : OUT std_logic
 );

 END COMPONENT;

 signal A : std_logic := '0';
 signal B : std_logic := '0';
 signal Cin : std_logic := '0';
 signal S : std_logic;
 signal Cout : std_logic;

BEGIN

 uut: test PORT MAP (
 A => A,
 B => B,
 Cin => Cin,
 S => S,
 Cout => Cout
 );

 stim_proc: process

 begin
 A <= '1';
 B <= '0';
 Cin <= '0';
 A <= '0';
 B <= '1';
  Cin <= '0';
 A <= '1';
 B <= '1';
 Cin <= '0';
 A <= '0';
 B <= '0';
 Cin <= '1';
 A <= '1';
 B <= '0';
 Cin <= '1';
 A <= '0';
 B <= '1';
 Cin <= '1';
 A <= '1';
 B <= '1';
 Cin <= '1';

 end process;
END;
