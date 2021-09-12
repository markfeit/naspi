#
# Makefile for pigpiod systemd file.
#
# For some reason, pigpiod doesn't provide this.
#

SERVICE=pigpio

default:
	@echo "Nothing to do here."


install:
	cp "$(SERVICE).service" /etc/systemd/system
	chmod 444 "/etc/systemd/system/$(SERVICE).service"
	systemctl daemon-reload
	systemctl enable --now "$(SERVICE)"


clean:
	rm -rf $(TO_CLEAN) *~
