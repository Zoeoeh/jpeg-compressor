OBJS=src/jpge.o src/jpgd.o src/encoder.o
BIN=encoder
CXXFLAGS ?= -O3 -ffast-math -fno-signed-zeros

$(BIN): $(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm $(OBJS) $(BIN)
