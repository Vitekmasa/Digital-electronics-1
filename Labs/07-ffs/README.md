# CV-07-Latches and Flip-flops
[Repository](https://github.com/Vitekmasa)

## Task 1 (Preparation task)
### Characteristic equations for D, JK, T flip-flops
```vhdl
D flip flop: q_(n+1) = d
JK flip flop: q_(n+1) = j * (not q_n) + (not k) * q_n
T flip flop: q_(n+1) = t * (not q_n) + (not t) * q_n
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

```
### VHDL testbench of tb_d_latch
```vhdl

```
### Simulated time waveforms
![Sim1](Images/Sim1.png)

## Task 3
### VHDL process of p_d_ff_arst
```vhdl

```

### VHDL process of p_d_ff_rst
```vhdl

```

### VHDL process of p_jk_ff_rst
```vhdl

```

### VHDL process of p_t_ff_rst
```vhdl

```

### VHDL testbench of tb_
```vhdl

```

### Simulated time waveforms
![Sim1](Images/Sim1.png)

## Task 4
### VHDL process of p_mux
![Sim2](Images/Sim2.png)
