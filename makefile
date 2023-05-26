output: main.o
	clang++ -std=c++17 main.o game.o -o gather.app -lSDL2

main.o: main.cpp game.o
	clang++ -std=c++17 -c main.cpp

Game.o: game.cpp game.h
	clang++ -std=c++17 -c game.cpp

clean:
	rm *.o gather.app