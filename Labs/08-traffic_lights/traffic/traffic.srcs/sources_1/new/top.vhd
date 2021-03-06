library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port (
        CLK100MHZ   :   in  std_logic;
        BTNC        :   in  std_logic;
        SW          :   in  std_logic_vector(2-1 downto 0);
        LED16_B     :   out  std_logic;
        LED16_G     :   out  std_logic;
        LED16_R     :   out  std_logic;
        LED17_B     :   out  std_logic;
        LED17_G     :   out  std_logic;
        LED17_R     :   out  std_logic
         );
end top;

architecture Behavioral of top is

begin
  tlc : entity work.tlc
        port map(
            clk         => CLK100MHZ,
            reset       => BTNC,

            sens_s      =>  SW(0),
            sens_w      =>  SW(1),

            south_o(0)  => LED16_B,
            south_o(1)  => LED16_G,
            south_o(2)  => LED16_R,

            west_o(0)   => LED17_B,
            west_o(1)   => LED17_G,
            west_o(2)   => LED17_R
        );


end Behavioral;
