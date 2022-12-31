.PHONY: deps
deps:
	gem install bundler -v "2.0.2"

.PHONY: install
install:
	bundle _2.0.2_ install

.PHONY: run
run:
	bundle _2.0.2_ exec jekyll serve
