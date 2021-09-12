#
# Makefile for naspid
#

SERVICE=naspi

default:
	@echo "Nothing to do here."


install:
	cp naspid /usr/bin
	chmod 555 /usr/bin/naspid
	cp "$(SERVICE).service" /etc/systemd/system
	chmod 444 "/etc/systemd/system/$(SERVICE).service"
	cp "$(SERVICE).conf" /etc
	chmod 644 "/etc/$(SERVICE).conf"
	systemctl daemon-reload
	systemctl enable --now "$(SERVICE)"
	systemctl restart "$(SERVICE)"


clean:
	rm -rf $(TO_CLEAN) *~
