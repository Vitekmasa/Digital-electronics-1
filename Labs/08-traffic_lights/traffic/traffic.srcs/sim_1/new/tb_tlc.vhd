library ieee;
use ieee.std_logic_1164.all;

entity tb_tlc is
end entity tb_tlc;

architecture testbench of tb_tlc is
    constant c_CLK_100MHZ_PERIOD : time := 10 ns;
    
    signal s_clk_100MHz : std_logic;
    signal s_reset      : std_logic;
    signal s_south      : std_logic_vector(3 - 1 downto 0);
    signal s_west       : std_logic_vector(3 - 1 downto 0);
    signal s_sens_s     : std_logic;
    signal s_sens_w     : std_logic;
    

begin
    uut_tlc : entity work.tlc
        port map(
            clk     => s_clk_100MHz,
            reset   => s_reset,
            south_o => s_south,
            west_o  => s_west,
            sens_s  => s_sens_s,
            sens_w  => s_sens_w
        );
        
    p_clk_gen : process
    begin
        while now < 10000 ns loop
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;

    
    p_reset_gen : process
    begin
        s_reset <= '0'; wait for 200 ns;
        s_reset <= '1'; wait for 500 ns;
        s_reset <= '0';
        wait;
    end process p_reset_gen;
    
    p_stimulus : process
    begin
    
       wait for 745ns;
       
       s_sens_s <= '0';
       wait for 100ns;
       s_sens_w <= '0';
       wait for 100ns;
       
       s_sens_s <= '0';
       wait for 100ns;
       s_sens_w <= '1';
       wait for 100ns;
       
       s_sens_s <= '1';
       wait for 100ns;
       s_sens_w <= '0';
       wait for 100ns;
       
       s_sens_s <= '1';
       wait for 100ns;
       s_sens_w <= '1';
       wait for 100ns;
       
       wait;
    end process p_stimulus;

end architecture testbench;
