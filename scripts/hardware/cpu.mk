compile_cuda:
	@echo "gpu not ok"

define compile
	@$(CPP_COMPILER) -c -I $(INCLUDE) $1 -o $(BIN)/tmp.o $(CPP_FLAGS)
	@$(CPP_COMPILER) $(LIB_SO) $(BIN)/tmp.o $(shell find $(OBJ) -name '*.o') \
		-o $(BIN)/$(subst /,_,$2).exe $(LIBS_SO)
endef
