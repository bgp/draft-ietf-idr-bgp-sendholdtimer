#
# Makefile for I-D's and RFCs
# $Id: Makefile,v 1.1.1.1 2002-11-11 05:11:48 randy Exp $
#

# Your nroff document is called foo.txt. Change below as appropiate.
NAME=draft-spaghetti-idr-revised-holdtimers

all: $(NAME).xml
	xml2rfc $(NAME).xml --html --text

clean:
	rm -f *.html *.txt
