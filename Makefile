.PHONY: install
install:
	bundle _2.0.2_ install

.PHONY: run
run:
	bundle _2.0.2_ exec jekyll serve
