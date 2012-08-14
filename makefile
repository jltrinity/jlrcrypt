# makefile jlrcrypt
# @jlr

CXX = g++
CXXFLAGS =  -ansi -Wall -pedantic
OBJETOS= jlrcrypt.o main.o

all: jlrcrypt

jlrcrypt: $(OBJETOS)
	$(CXX) -o $@ $(LDFLAGS) $(OBJETOS)

main.o: jlrcrypt.h

jlrcrypt.o: jlrcrypt.h

clean:
	$(RM) $(OBJETOS) core *~ 
