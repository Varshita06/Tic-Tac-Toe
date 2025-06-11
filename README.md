# Tic-Tac-Toe

This project implements a complete **Tic-Tac-Toe game** logic using **Verilog HDL**, based on the specifications from the CS2310 lab assignment (Foundations of Computer Systems Design). The design includes modular, testable Verilog files that simulate a two-player game on a 3x3 board using `TCell` and `TBox` modules.

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
🎓 *IIT / College-Level Digital Design Course*

---

## 🙋‍♀️ Author

**Sai Varshita Morisetty**


