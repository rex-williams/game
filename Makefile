SRC = main.c
OBJ = ${SRC:.c=.o}

all: game

.c.o:
	${CC} -c ${CFLAGS} $<

game: ${OBJ}
	${CC} -o game main.c -l glut

clean:
	rm -f game ${OBJ}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f game ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwm

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/game
