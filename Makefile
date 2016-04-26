########################################################################################

CC?=gcc
DESTDIR?=
PREFIX?=/usr

########################################################################################

.PHONY = all bin clean install uninstall

########################################################################################

bin:
	$(CC) -O3 -o fls ftllister.c

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp fls $(DESTDIR)$(PREFIX)/bin/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/fls

clean:
	rm -f fls
