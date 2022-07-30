#
# Makefile for I-D's and RFCs
# $Id: Makefile,v 1.1.1.1 2002-11-11 05:11:48 randy Exp $
#

# Your nroff document is called foo.txt. Change below as appropiate.
NAME=draft-spaghetti-idr-bgp-sendholdtimer

LAST_UPLOADED=04

all: $(NAME).xml
	xml2rfc $(NAME).xml --html --text
	rfcdiff draft-spaghetti-idr-bgp-sendholdtimer-$(LAST_UPLOADED).txt draft-spaghetti-idr-bgp-sendholdtimer.txt

diff:
	rfcdiff draft-spaghetti-idr-bgp-sendholdtimer-$(LAST_UPLOADED).txt draft-spaghetti-idr-bgp-sendholdtimer.txt

clean:
	rm -f *.html *.txt
