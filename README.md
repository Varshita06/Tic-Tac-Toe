# Tic-Tac-Toe

This project implements a complete **Tic-Tac-Toe game** logic using **Verilog HDL**, based on the specifications from the CS2310 lab assignment (Foundations of Computer Systems Design). The design includes modular, testable Verilog files that simulate a two-player game on a 3x3 board using `TCell` and `TBox` modules.

---

## 📁 Files Included

### 🧩 Source Code

```
├── Tcell.v          # Models a single 3x3 cell with set/reset/symbol logic
├── TBox.v           # Full Tic-Tac-Toe board using TCell instances and game logic
├── dec.v            # 2D to 1D index decoder (row/col to index)
├── reset.v          # Board-level reset logic
├── intial.v         # Starting state initializer
```

### 🧪 Testbench

```
├── TBox_tb_made.vvp     # Compiled testbench file to validate the TBox module
```

---

## 🔍 Module Descriptions

### `Tcell`

A single cell in the Tic-Tac-Toe grid:

* Synchronous update on `posedge clk`
* Takes `set`, `reset`, and `set_symbol`
* Outputs:

  * `valid`: 1 if the cell is filled
  * `symbol`: 0 for O, 1 for X

### `TBox`

The main game controller using 9 `Tcell` instances:

* Inputs: `clk`, `set`, `reset`, `row[1:0]`, `col[1:0]`
* Outputs:

  * `valid[8:0]`, `symbol[8:0]`: State of each cell
  * `game_state[1:0]`:

    * `2'b00` → Game ongoing
    * `2'b01` → X won
    * `2'b10` → O won
    * `2'b11` → Draw
* Prevents overwrites and enforces valid moves

---

## 🧪 How to Run

1. **Compile all modules** using your Verilog simulator (e.g., Icarus Verilog, ModelSim):

```bash
iverilog -o TBox_test TBox.v Tcell.v dec.v reset.v intial.v TBox_tb_made.vvp
vvp TBox_test
```

2. **Analyze output** using waveform tools like `GTKWave` (if VCD dump included).

---

## 🎯 Features

* ✅ FSM logic to control turns
* 🔄 Synchronous reset and control logic
* 🏁 Auto-detect win and draw conditions
* 🛡️ Prevents rewriting an already filled cell

---

## 📌 Project Context

This project was developed as part of:
**CS2310 – Foundations of Computer Systems Design (Lab 9)**
📅 *October–November 2024*
🎓 *MIT / College-Level Digital Design Course*

---

## 🙋‍♀️ Author

**Sai Varshita Morisetty**
🔗 [LinkedIn](https://www.linkedin.com/in/varshita06/)

---

## ⭐️ Credits

Based on the lab problem statement provided in:
`Problem Statement(Q3).pdf` – \[Foundations of Computer Systems Design, CS2310 Lab 9]
Includes partial testbench scaffolding provided by the course instructors.
