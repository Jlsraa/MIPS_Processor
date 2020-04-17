onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk
add wave -noupdate /MIPS_Processor_TB/reset
add wave -noupdate /MIPS_Processor_TB/PortIn
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/ALUResultOut
add wave -noupdate /MIPS_Processor_TB/PortOut
add wave -noupdate -divider ROM
add wave -noupdate /MIPS_Processor_TB/DUV/ROMProgramMemory/Address
add wave -noupdate /MIPS_Processor_TB/DUV/ROMProgramMemory/RealAddress
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/Instruction
add wave -noupdate -divider PC
add wave -noupdate /MIPS_Processor_TB/DUV/ProgramCounter/NewPC
add wave -noupdate /MIPS_Processor_TB/DUV/ProgramCounter/PCValue
add wave -noupdate -divider RAM
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/RAM/Address
add wave -noupdate /MIPS_Processor_TB/DUV/RAM/MemRead
add wave -noupdate /MIPS_Processor_TB/DUV/RAM/MemWrite
add wave -noupdate /MIPS_Processor_TB/DUV/RAM/ReadData
add wave -noupdate /MIPS_Processor_TB/DUV/RAM/WriteData
add wave -noupdate /MIPS_Processor_TB/DUV/RAM/ram
add wave -noupdate -divider CONTROL
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/OP
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchEQ
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchNE
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/Jump
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/ControlValues
add wave -noupdate -divider ALU
add wave -noupdate /MIPS_Processor_TB/DUV/Arithmetic_Logic_Unit/ALUOperation
add wave -noupdate /MIPS_Processor_TB/DUV/Arithmetic_Logic_Unit/A
add wave -noupdate /MIPS_Processor_TB/DUV/Arithmetic_Logic_Unit/B
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Arithmetic_Logic_Unit/ALUResult
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {56 ps}
