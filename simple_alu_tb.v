module tb (clk, reset, result ); 
 
  input clk; 
  input reset; 
  output [8:0] result; 
 
	reg [7:0] a_mem [255:0];
	reg [7:0] b_mem [255:0];
	reg [7:0] op_mem [255:0];
	reg [7:0] result_mem [255:0];
initial
begin
	$readmemh("a.txt",a_mem);
	$readmemh("b.txt",b_mem);
	$readmemh("op.txt",op_mem);
end

reg [7:0] opA, opB; 
reg [1:0] op; 
reg [7:0] mem_address; 

  always @(posedge clk or posedge reset) 
  begin 
   if (reset) 
   begin      
		mem_address <= 0;
		opA <= 0;
		opB <= 0; 
		op <= 0; 
   end 
   else
   begin      
		mem_address <= mem_address + 1;
		opA <= a_mem[mem_address];
		opB <= b_mem[mem_address];
		op <= op_mem[mem_address];
		result_mem[mem_address] <= result;
		
    end
     
 end
 
  simple_alu alu_inst(.result(result), .operandA(opA), .operandB(opB), .opcode(op), .clk(clk), .reset(reset)); 
 
 endmodule 
