
install:
	mkdir -p /usr/bin/
	cp bin/relay-card /usr/bin/
	mkdir -p /usr/share/man/man1/
	cp man/relay-card.1 /usr/share/man/man1/
	mkdir -p /usr/share/bash-completion/completions/
	cp bash-completion/relay-card /usr/share/bash-completion/completions/
	mkdir -p /lib/systemd/system/
	cp systemd/relay-card.service /lib/systemd/system/
	systemctl enable relay-card.service
	systemctl start relay-card.service

uninstall:
	systemctl stop relay-card.service || true
	systemctl disable relay-card.service || true
	rm -f /lib/systemd/system/relay-card.service
	rm -f /usr/bin/relay-card
	rm -f /usr/share/bash-completion/completions/relay-card
	rm -f /usr/share/man/man1/relay-card.1

	
