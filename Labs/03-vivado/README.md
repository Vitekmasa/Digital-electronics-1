# CV-03-Vivado
[Repository](https://github.com/Vitekmasa)
## Task 1 (Preparation task)

| | **Name of pin for** | |
| :-: | :-: | :-: |
| **Num** | **Switch** |  **LED**  |
| 0 | J15 | H17 |
| 1 | L16 | K15 |
| 2 | M13 | J13 |
| 3 | R15 | N14 |
| 4 | R17 | R18 |
| 5 | T18 | V17 |
| 6 | U18 | U17 |
| 7 | R13 | U16 |
| 8 | T8 | V16 |
| 9 | U8 | T15 |
| 10 | R16 | U14 |
| 11 | T13 | T16 |
| 12 | H6 | V15 |
| 13 | U12 | V14 |
| 14 | U11 | V12 |
| 15 | V10 | V11 |

## Task 2
### VHDL architecture from mux_2bit_4to1
```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity mux_2bit_4to1 is
    port(
        a_i           : in  std_logic_vector(2 - 1 downto 0);
		b_i           : in  std_logic_vector(2 - 1 downto 0);
        c_i           : in  std_logic_vector(2 - 1 downto 0);
        d_i           : in  std_logic_vector(2 - 1 downto 0);
        sel_i           : in  std_logic_vector(2 - 1 downto 0);
        -- COMPLETE ENTITY DECLARATION

        f_o    : out std_logic_vector(2 - 1 downto 0)
    );
end entity mux_2bit_4to1;

architecture Behavioral of mux_2bit_4to1 is
begin
    f_o    <= a_i when (sel_i = "00") else
              b_i when (sel_i = "01") else
              c_i when (sel_i = "10") else
              d_i;

end architecture Behavioral;
```
### VHDL stimulus process from tb_mux_2bit_4to1
```VHDL
architecture testbench of tb_mux_2bit_4to1 is

    -- Local signals
    signal s_a       : std_logic_vector(2 - 1 downto 0);
    signal s_b       : std_logic_vector(2 - 1 downto 0);
    signal s_c       : std_logic_vector(2 - 1 downto 0);
    signal s_d       : std_logic_vector(2 - 1 downto 0);
    signal s_sel     : std_logic_vector(2 - 1 downto 0);
    
    signal s_f       : std_logic_vector(2 - 1 downto 0);
    
begin
    uut_mux_2bit_4to1 : entity work.mux_2bit_4to1
        port map(
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            sel_i         => s_sel,
            f_o            => s_f
        );
        
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;

        s_a <= "00"; s_b <= "00";s_c <= "00"; s_d <= "00"; 
        s_sel <= "00";
        wait for 100 ns;
        
        s_a <= "10"; s_b <= "01";s_c <= "01"; s_d <= "00"; 
        s_sel <= "00";
        wait for 100 ns;
        
        s_a <= "10"; s_b <= "01";s_c <= "01"; s_d <= "11"; 
        s_sel <= "00";
        wait for 100 ns;
        
        s_a <= "10"; s_b <= "01";s_c <= "01"; s_d <= "11"; 
        s_sel <= "01";
        wait for 100 ns;
        
        s_a <= "10"; s_b <= "01";s_c <= "11"; s_d <= "00"; 
        s_sel <= "01";
        wait for 100 ns;
        
        s_a <= "10"; s_b <= "01";s_c <= "11"; s_d <= "00"; 
        s_sel <= "11";
        wait for 100 ns;

        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
end architecture testbench;
```
### Simulated time waveforms
![Sim](Images/Sim.png)
## Task 3
[Toturial for Vivado](Toturial/Vivado_navod.pdf)
