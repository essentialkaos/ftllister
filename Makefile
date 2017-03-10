########################################################################################

DESTDIR?=
PREFIX?=/usr

########################################################################################

.PHONY = all clean install uninstall

########################################################################################

all: ftllister

ftllister:
	$(CC) -O3 -o ftllister ftllister.c

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp ftllister $(DESTDIR)$(PREFIX)/bin/ftllister

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/ftllister

clean:
	rm -f ftllister
