LIBPTY=-lutil
CFLAGS=-O2
USRBIN_DIR=	/usr/bin
USRBINDIR= $(DESTDIR)$(USR_BIN_DIR)

all: beep2light

beep2light:
	$(CC) $(CFLAGS) -o beep2light beep2light.c $(LIBPTY)

install: all
	$(INSTALLDIR) $(USRBINDIR)
	$(INSTALLBIN) beep2light

.PHONY:	clean
clean:
	-rm -f *.o *~ core beep2light
