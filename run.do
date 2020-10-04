configure -emul Greg
reg setvalue tb.reset 1
run 10
reg setvalue tb.reset 0
run 256
upload -tracedir ./veloce.wave/wave1
memory upload -instance result_mem -file result.txt
exit 
