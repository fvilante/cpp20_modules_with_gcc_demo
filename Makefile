
.PHONY: all clean run

COMPILER = g++
COMPILER_FLAG = -std=c++20 -fmodules-ts

default: all

run: all
	./App.exe

all: App.exe

# VERY IMPORTAN! In compilling modules the order of compilation matters. This is a characteristic 
# of the technology. Check for example to swap the two lines bellow:
# App.exe:  main.o func.o 
App.exe:  func.o main.o 
	${COMPILER} $^ -o App

%.o: %.cpp 
	${COMPILER} -c  ${COMPILER_FLAG} $<

clean:
	@-rm App
	@-rm func.o
	@-rm main.o
	@-rm -r gcm.cache