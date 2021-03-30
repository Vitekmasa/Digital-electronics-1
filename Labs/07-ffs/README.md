# CV-07-Latches and Flip-flops
[Repository](https://github.com/Vitekmasa)

## Task 1 (Preparation task)
### Characteristic equations for D, JK, T flip-flops
```vhdl
flip flops:
D: q_(n+1) = d
JK: q_(n+1) = j * (not q_n) + (not k) * q_n
T: q_(n+1) = t * (not q_n) + (not t) * q_n
```

### Characteristic table for D flip-flops
| **D** | **Qn** | **Q(n+1)** | **Comments** |
| :-: | :-: | :-: | :-- |
| 0 | 0 | 0 | No change |
| 0 | 1 | 0 | Change |
| 1 | 1 | 1 | No change |
| 1 | 0 | 1 | Change |

### Characteristic table for JK flip-flops
| **J** | **K** | **Qn** | **Q(n+1)** | **Comments** |
| :-: | :-: | :-: | :-: | :-- |
| 0 | 0 | 0 | 0 | No change |
| 0 | 0 | 1 | 1 | No change |
| 0 | 1 | 0 | 0 | Reset |
| 0 | 1 | 1 | 0 | Reset |
| 1 | 0 | 0 | 1 | Set |
| 1 | 0 | 1 | 1 | Set |
| 1 | 1 | 0 | 1 | Toggle |
| 1 | 1 | 1 | 0 | Toggle |

### Characteristic table for T flip-flops
| **T** | **Qn** | **Q(n+1)** | **Comments** |
| :-: | :-: | :-: | :-- |
| 0 | 0 | 0 | No change |
| 0 | 1 | 1 | No change |
| 1 | 0 | 1 | Toggle |
| 1 | 1 | 0 | Toggle |

## Task 2
### VHDL process of p_d_latch
```vhdl
    p_d_latch : process(d, arst, en)
    begin
        if (arst = '1') then
            q     <= '0';
            q_bar <= '1';
        elsif (en = '1') then
            q     <= d;
            q_bar <= not d;
        end if;
    end process p_d_latch;
```
### VHDL testbench processes of tb_d_latch
```vhdl
p_reset_gen : process
    begin
        s_arst <= '0';
        wait for 50 ns;
        s_arst <= '1';
        wait for 10 ns;
        s_arst <= '0';
        wait for 108 ns;
        s_arst <= '1';

        wait;
    end process p_reset_gen;
    
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        s_en    <= '0';
        s_d     <= '0';
        assert (s_en = '0' and s_d = '0') report "Failed no. 1" severity note;
        
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        
        s_en <= '1';
        assert (s_en = '1') report "Failed no. 2" severity note;
        
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        
        s_en <= '0';
        assert (s_en = '0') report "Failed no. 3" severity note;
        
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        
        s_en <= '1';
        assert (s_en = '1') report "Failed no. 4" severity note;
        
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        s_d    <= '1';
        wait for 10 ns;
        s_d    <= '0';
        wait for 10 ns;
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```
### Simulated time waveforms
![Sim1](Images/Sim1.png)

## Task 3
### D flip-flop with async reset
#### VHDL process of p_d_ff_arst
```vhdl

```

#### VHDL process of p_d_ff_arst
```vhdl

```

#### Simulated time waveforms
![Sim1](Images/Sim1.png)

### D flip-flop with sync reset
#### VHDL process of p_d_ff_rst
```vhdl

```
#### Simulated time waveforms

### JK flip-flop (sync reset)
#### VHDL process of p_jk_ff_rst
```vhdl

```

#### Simulated time waveforms
![Sim1](Images/Sim1.png)

### T flip-flop wtih sync reset
#### VHDL process of p_t_ff_rst
```vhdl

```

#### VHDL testbench of tb_
```vhdl

```

#### Simulated time waveforms
![Sim1](Images/Sim1.png)

## Task 4
### VHDL process of p_mux
![Sim2](Images/Sim2.png)
