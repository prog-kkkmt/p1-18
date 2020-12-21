all: xo

xo: xo.o game.o
	gcc xo.c game.c -o xo

xo.o:
	gcc -c xo.c

game.o:
	gcc -c game.c

clean:
	rm *.o xo                                      
