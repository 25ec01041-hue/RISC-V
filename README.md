# Single-Cycle RISC-V Processor (Verilog HDL)

A modular, single-cycle RISC-V processor implemented in Verilog HDL, structured for simulation, synthesis, and FPGA hardware implementation in AMD/Xilinx Vivado.

---

## Repository Structure

```text
Vivado Simulation/RISC-V/
├── RISC-V.cache/
├── RISC-V.hw/
├── RISC-V.runs/
└── RISC-V.srcs/
    ├── constrs_1/imports/RISC-V_Project/
    │   └── constraints.xdc          # FPGA pin mappings and clock constraints
    └── sources_1/imports/RISC-V_Project/
        ├── top_riscv.v              # Top-level processor integration module
        ├── pc.v                     # Program Counter register
        ├── instruction_memory.v     # Instruction Memory (ROM)
        ├── program.mem              # Hex/binary machine code loaded into instruction memory
        ├── control_unit.v           # Main opcode decoder and control signal generator
        ├── register_file.v          # 32-register architectural register file
        ├── imm_gen.v                # Immediate sign-extension and formatting unit
        ├── alu_control.v            # Secondary ALU operation decoder (funct3/funct7)
        ├── alu.v                    # Arithmetic Logic Unit
        ├── branch_unit.v            # Branch condition evaluator and target address logic
        └── data_memory.v            # Data Memory (RAM) for load/store instructions

