PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install tfetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p tfetch $(DESTDIR)$(PREFIX)/bin/tfetch
	@cp -p tfetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/tfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/tfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/tfetch.1*
