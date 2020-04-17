/******************************************************************
* Description
*	This is control unit for the MIPS processor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	01/03/2014
******************************************************************/
module Control
(
	input [5:0]OP,
	output Jump,
	output RegDst,
	output BranchEQ,
	output BranchNE,
	output MemRead,
	output MemtoReg,
	output MemWrite,
	output ALUSrc,
	output RegWrite,
	output reg Jal,
	output [2:0]ALUOp
);
localparam R_Type = 0;	
localparam J_Type_J = 6'h2;
localparam J_Type_JAL = 6'h3;
localparam I_Type_ADDI = 6'h8;
localparam I_Type_ORI = 6'h0d;
localparam I_Type_ANDI = 6'h0c;
localparam I_Type_LUI = 6'h0f;
localparam I_Type_LW = 6'h23;
localparam I_Type_SW = 6'h2b;
localparam I_Type_BEQ = 6'h4;
localparam I_Type_BNE = 6'h5;
reg [11:0] ControlValues;

always@(OP) begin
	casex(OP)
		R_Type:       ControlValues= 12'b01_001_00_00_111;
		I_Type_ADDI:  ControlValues= 12'b00_101_00_00_100;
		I_Type_ORI:   ControlValues= 12'b00_101_00_00_101;
		I_Type_ANDI:  ControlValues= 12'b00_101_00_00_110;
		I_Type_LUI:   ControlValues= 12'b00_101_00_00_011;
		I_Type_LW:	  ControlValues= 12'b00_111_10_00_100;
		I_Type_SW:	  ControlValues= 12'b00_100_01_00_100;
		I_Type_BEQ:	  ControlValues= 12'b00_000_00_01_001;
		I_Type_BNE:	  ControlValues= 12'b00_000_00_10_001;
		J_Type_J:	  ControlValues= 12'b10_000_00_00_000;
		J_Type_JAL:	  ControlValues= 12'b10_001_00_00_000;
		
		default:
			ControlValues= 12'b0000000000;
		endcase
			Jal = (ControlValues== 12'b10_001_00_00_000) ? 1'b1 : 1'b0;
end	
	
assign Jump = ControlValues[11];
assign RegDst = ControlValues[10];			//Selector for mux Rtype(1) or IType(0)
assign ALUSrc = ControlValues[9];			//Selector for mux ReadData&Imm
assign MemtoReg = ControlValues[8];			//Writes from memory to reg
assign RegWrite = ControlValues[7];			//
assign MemRead = ControlValues[6];			//Reads memory
assign MemWrite = ControlValues[5];			//Writes memory
assign BranchNE = ControlValues[4];			//1 just for bne
assign BranchEQ = ControlValues[3];			//1 just for beq
assign ALUOp = ControlValues[2:0];			//Value of the ALU Operation

endmodule
//control//

