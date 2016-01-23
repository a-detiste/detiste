DESTDIR ?= debian/detiste

install:
	install -m644 -D 99lan                   $(DESTDIR)/etc/apt/apt.conf.d/99lan
	install -m644 -D lan.pref                $(DESTDIR)/etc/apt/preferences.d/lan.pref
	install -m644 -D lan.list                $(DESTDIR)/etc/apt/sources.list.d/lan.list
	install -m755 -D 0wait                   $(DESTDIR)/etc/cron.daily/0wait
	install -m755 -D zz_clean                $(DESTDIR)/etc/cron.daily/zz_clean
	install -m755 -D zz_desktop_notification $(DESTDIR)/etc/cron.daily/zz_desktop_notification
	install -m644 -D parenting               $(DESTDIR)/etc/site/parenting
	mkdir -p                                 $(DESTDIR)/usr/bin/
	cp scripts/*                             $(DESTDIR)/usr/bin/
	chmod 0755                               $(DESTDIR)/usr/bin/*
	install -m644 -D detiste                 $(DESTDIR)/usr/lib/cruft/filters-unex/detiste
	install -m755 -D history                 $(DESTDIR)/usr/sbin/history
