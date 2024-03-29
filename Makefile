# Makefile for mywebpage

.PHONY: all publish publish_no_init clean-touch

all: clean publish
clean-touch: clean touch

publish: publish.el
	@echo "Publishing... with current Emacs configurations."
	emacs --batch --load publish.el --funcall org-publish-all

publish_no_init: publish.el
	@echo "Publishing... with --no-init."
	emacs --batch --no-init --load publish.el --funcall org-publish-all

clean:
	@echo "Cleaning up.."
	@rm -rvf *.elc
	@rm -rvf html
	@rm -rvf ~/.org-timestamps/*

touch:
	@echo "Touching files..."
	@touch *.org
	@touch **/*.org
	@touch **/*.png
	@touch static/css/*.css
