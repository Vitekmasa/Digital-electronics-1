----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2021 18:20:30
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
 Port ( SW :    in	std_logic_vector(4 - 1 downto 0);        --Input binary data
        CA :	out	std_logic;                               --Cathod A
        CB :	out	std_logic;                               --Cathod B
        CC :	out	std_logic;                               --Cathod C
        CD :	out	std_logic;                               --Cathod D
        CE :	out	std_logic;                               --Cathod E
        CF :	out	std_logic;                               --Cathod F
        CG :	out	std_logic;                               --Cathod G
        AN :	out	std_logic_vector(8 - 1 downto 0);        --Common anode signals to individual displays 
        LED :	out	std_logic_vector(8 - 1 downto 0));       --LED indicators
end top;

architecture Behavioral of top is
    begin  
    hex2seg : entity work.hex_7seg
        port map(
           hex_i      => SW,
           seg_o(6)   => CA,
           seg_o(5)   => CB,
           seg_o(4)   => CC,
           seg_o(3)   => CD,
           seg_o(2)   => CE,
           seg_o(1)   => CF,
           seg_o(0)   => CG
           );

        AN <= b"1111_0111";
        LED(3 downto 0) <= SW;
    
        LED(4) <= '1' when (SW = "0000") else '0';
        
        LED(5) <= '1' when (SW = "1010") else '0',
              '1' when (SW = "1011") else '0',
              '1' when (SW = "1100") else '0',
              '1' when (SW = "1101") else '0',
              '1' when (SW = "1110") else '0',
              '1' when (SW = "1111") else '0';
              
        LED(6) <= '1' when (SW = "0001") else '0',
              '1' when (SW = "0011") else '0',
              '1' when (SW = "0101") else '0',
              '1' when (SW = "0111") else '0',
              '1' when (SW = "1001") else '0',
              '1' when (SW = "1011") else '0',
              '1' when (SW = "1101") else '0',
              '1' when (SW = "1111") else '0';
           
        LED(7) <= '1' when (SW = "0001") else '0',
              '1' when (SW = "0010") else '0',
              '1' when (SW = "0100") else '0',
              '1' when (SW = "1000") else '0';
                
end architecture Behavioral;
