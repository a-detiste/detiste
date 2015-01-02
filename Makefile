DESTDIR ?= debian/detiste

install:
	install -m644 -D 99lan    $(DESTDIR)/etc/apt/apt.conf.d/99lan
	install -m644 -D lan.pref $(DESTDIR)/etc/apt/preferences.d/lan.pref
	install -m644 -D lan.list $(DESTDIR)/etc/apt/sources.list.d/lan.list
