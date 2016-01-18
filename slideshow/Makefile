.PHONY: build clean all

all: build

clean:
	(po4a --rm-translations po4a/po4a.cfg)
	rm -rf translated

build:
	# html
	@ rm pot/*.pot
	@ html2po -P en pot && echo "HTML pot files created"
	@ msgcat pot/*.pot > live-installer-3-slideshow.pot
	@ head -n50 live-installer-3-slideshow.pot > .tmp && tail -n+51 live-installer-3-slideshow.pot | sed '/fuzzy/,/X-/d' >> .tmp && mv -f .tmp live-installer-3-slideshow.pot && echo "Pot files merged"
	@ po4a po4a/po4a.cfg && echo "Po files and translations updated"
	# don't ship incomplete translations
	@ n_required=`ls en | wc -l`; \
	for dir in `echo translated/*`; do \
	    n_slides=`ls $$dir | wc -l`; \
	    [ $$n_slides != $$n_required ] && rm -rf $$dir; \
	done >/dev/null || true
	@ echo "Shipped slideshow translations (`ls translated | wc -l`):" `ls translated`
