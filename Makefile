.PHONY: install uninstall
PROG ?= lyvi
PREFIX ?= /usr
DESTDIR ?= $(PREFIX)/bin

all: install

install:
	@ln -vfs $(shell pwd)/lyvi.py $(DESTDIR)/$(PROG)
	@echo "$(PROG) was installed succesfully"
	@echo

uninstall:
	@rm -vf $(DESTDIR)/$(PROG)
