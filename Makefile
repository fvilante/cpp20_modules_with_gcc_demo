
.PHONY: all clean run

default: all

run: all
	./App.exe

all: App.exe

App.exe: func.o main.o
	g++ main.o func.o -o App

func.o: func.cpp 
	g++ -c -std=c++20 -fmodules-ts func.cpp

main.o: main.cpp 
	g++ -c -std=c++20 -fmodules-ts main.cpp

clean:
	-rm App.exe
	-rm func.o
	-rm main.o
	-rm -r gcm.cache