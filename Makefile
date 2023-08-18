
.PHONY: all clean run

COMPILER = g++

default: all

run: all
	./App.exe

all: App.exe

App.exe: func.o main.o
	${COMPILER} main.o func.o -o App

func.o: func.cpp 
	${COMPILER} -c -std=c++20 -fmodules-ts func.cpp

main.o: main.cpp 
	${COMPILER} -c -std=c++20 -fmodules-ts main.cpp

clean:
	@-rm App.exe
	@-rm func.o
	@-rm main.o
	@-rm -r gcm.cache