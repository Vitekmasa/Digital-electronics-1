----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2021 18:54:16
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_top is
 --Port ( );
end tb_top;

architecture Behavioral of tb_top is
        signal s_SW : std_logic_vector(4 - 1 downto 0);
        signal s_CA : std_logic;
        signal s_CB : std_logic;
        signal s_CC : std_logic;
        signal s_CD : std_logic;
        signal s_CE : std_logic;
        signal s_CF : std_logic;
        signal s_CG : std_logic;
        signal s_AN :	std_logic_vector(8 - 1 downto 0);
        signal s_LED :	std_logic_vector(8 - 1 downto 0);
begin

uut_top : entity work.top
    port map(
        SW => s_SW,
        CA => s_CA,
        CB => s_CB,
        CC => s_CC,
        CD => s_CD,
        CE => s_CE,
        CF => s_CF,
        CG => s_CG,
        AN => s_AN,
        LED => S_LED
        );
        
    p_stimulus : process
    begin
        
        report "Stimulus process started" severity note;
        
        s_SW <= "0000"; wait for 100ns;
        s_SW <= "0001"; wait for 100ns;
        s_SW <= "0010"; wait for 100ns;
        s_SW <= "0011"; wait for 100ns;
        s_SW <= "0100"; wait for 100ns;
        s_SW <= "0101"; wait for 100ns;
        s_SW <= "0110"; wait for 100ns;
        s_SW <= "0111"; wait for 100ns;
        s_SW <= "1000"; wait for 100ns;
        s_SW <= "1001"; wait for 100ns;
        s_SW <= "1010"; wait for 100ns;
        s_SW <= "1011"; wait for 100ns;
        s_SW <= "1100"; wait for 100ns;
        s_SW <= "1101"; wait for 100ns;
        s_SW <= "1110"; wait for 100ns;
        s_SW <= "1111"; wait for 100ns;   
        
        end process p_stimulus; 
end Behavioral;
