VERILOG = iverilog
TARGET = simple.vcd
TEMP = temp.vvp

$(TARGET) : temp.vvp
	vvp temp.vvp
temp.vvp: voter_if.v testbench.v
	$(VERILOG) -o $(TEMP) voter_if.v testbench.v
clean:
	-del $(TARGET)
	-del $(TEMP)