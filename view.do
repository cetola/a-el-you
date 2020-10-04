view wave
dataset open ./veloce.wave/wave1.stw wave1
wave add -d wave1 tb.clk {tb.mem_address[7:0]} {tb.opA[7:0]} {tb.opB[7:0]} {tb.op[1:0]} tb.reset {tb.result[8:0]}
echo "wave1.stw loaded and signals added. Open the Wave window to observe outputs."
