NAME=draft-ietf-idr-bgp-sendholdtimer

LAST_UPLOADED=08

all: $(NAME).xml
	xml2rfc $(NAME).xml --html --text
	rfcdiff draft-ietf-idr-bgp-sendholdtimer-$(LAST_UPLOADED).txt draft-ietf-idr-bgp-sendholdtimer.txt

diff:
	rfcdiff draft-ietf-idr-bgp-sendholdtimer-$(LAST_UPLOADED).txt draft-ietf-idr-bgp-sendholdtimer.txt

clean:
	rm -f *.html *.txt
