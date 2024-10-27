	
PROJ = mixed_norcas

regs:
	go run register_bank.go > rb_$(PROJ).sv ;\
#	cp reg_file_$(PROJ) ../$(PROJ)/test/.reg_file_$(PROJ)

clean:
	rm -f rb_$(PROJ).sv
	rm -f *.svh
	rm -f *.json
	rm -f reg_file_$(PROJ)
