all:

check:

install:
	groupadd -rf piwsrb
	mkdir -p $(DESTDIR)/usr/bin/
	cp bin/relay-card $(DESTDIR)/usr/bin/
	mkdir -p $(DESTDIR)/usr/share/man/man1/
	cp man/relay-card.1 $(DESTDIR)/usr/share/man/man1/
	mkdir -p $(DESTDIR)/usr/share/bash-completion/completions/
	cp bash-completion/relay-card $(DESTDIR)/usr/share/bash-completion/completions/
	mkdir -p $(DESTDIR)/lib/systemd/system/
	cp systemd/relay-card.service $(DESTDIR)/lib/systemd/system/
	systemctl enable relay-card.service
	systemctl start relay-card.service

uninstall:
	systemctl stop relay-card.service || true
	systemctl disable relay-card.service || true
	rm -f $(DESTDIR)/lib/systemd/system/relay-card.service
	rm -f $(DESTDIR)/usr/bin/relay-card
	rm -f $(DESTDIR)/usr/share/bash-completion/completions/relay-card
	rm -f $(DESTDIR)/usr/share/man/man1/relay-card.1
