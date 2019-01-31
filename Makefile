PREFIX ?= /usr/local
BINPREFIX ?= $(PREFIX)/bin
PLUGINNAME ?= git-pass1year
SOURCEFILE ?= ./bins/$(PLUGINNAME)
TARGETFILE ?= $(DESTDIR)$(BINPREFIX)/$(PLUGINNAME)

OS = $(shell uname)
ifeq ($(OS), FreeBSD)
	MANPREFIX ?= "$(PREFIX)/man/man1"
else
	MANPREFIX ?= "$(PREFIX)/share/man/man1"
endif

default: install

install:
	@echo "... installing bins to $(DESTDIR)$(BINPREFIX)"
	cp -f ${SOURCEFILE} ${TARGETFILE}
	@echo "install finished"
	
uninstall:
	@echo "... remove bins from $(DESTDIR)$(BINPREFIX)"
	rm -f ${TARGETFILE}
	@echo "remove finished"