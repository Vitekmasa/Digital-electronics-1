library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_t_ff_rst is
--  Port ( );
end tb_t_ff_rst;

architecture Behavioral of tb_t_ff_rst is
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;
   
    signal s_clk : STD_LOGIC;
    signal s_t : STD_LOGIC;
    signal s_rst : STD_LOGIC;
    signal s_q : STD_LOGIC;
    signal s_q_bar : STD_LOGIC;
begin

    uut_d_ff_arst : entity work.t_ff_rst
    port map (
        clk     =>  s_clk,
        t       =>  s_t,
        rst     =>  s_rst,
        q       =>  s_q,
        q_bar   =>  s_q_bar
    );
    
    p_clk_gen : process
    begin
        while now < 750 ns loop
            s_clk   <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk   <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;
    
    p_reset_gen : process
    begin
        s_rst   <= '0';
        wait for 10 ns;
        s_rst   <= '1';
        wait for 10 ns;
        s_rst   <= '0';
        wait for 90 ns;
        s_rst   <= '1';
        wait for 50 ns;
        s_rst   <= '0';
        wait for 10 ns; 
        wait;
    end process p_reset_gen;

    p_stimulus : process
    begin
        report "Stimulus process started-" severity note;
        
        wait for 20 ns;
        s_t <=  '1';
        wait for 10ns;
        assert (s_q = '1' and s_q_bar = '0') report "Failed no. 1" severity note;
        
        s_t <=  '0';
        wait for 10ns;
        assert (s_q = '1' and s_q_bar = '0') report "Failed no. 2" severity note;

        s_t <=  '1';
        wait for 10ns;
        assert (s_q = '0' and s_q_bar = '1') report "Failed no. 3" severity note;
        
        s_t <=  '0';
        wait for 10ns;
        assert (s_q = '0' and s_q_bar = '1') report "Failed no. 4" severity note;
        
        s_t <=  '1';
        wait for 10ns;
        assert (s_q = '1' and s_q_bar = '0') report "Failed no. 5" severity note;
        
        s_t <=  '0';
        wait for 10ns;
        assert (s_q = '1' and s_q_bar = '0') report "Failed no. 6" severity note;
        
        report "Stimulus process ended" severity note;
        wait;
    end process p_stimulus;

end Behavioral;