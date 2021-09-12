#
# Makefile for NASPi-Related Programs
#

SUBDIRS=pigpio naspid

default:
	@true


install clean::
	for DIR in $(SUBDIRS); do \
		$(MAKE) -C $$DIR $@ ; \
	done

clean::
	rm -rf $(TO_CLEAN) *~
