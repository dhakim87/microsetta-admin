# shamelessly adapt https://github.com/qiime2/q2-emperor/blob/master/Makefile
.PHONY: all lint test test-cov install dev clean distclean

PYTHON ?= python

all: ;

lint:
	flake8 microsetta_admin

test: all
	py.test

test-cov: all
	py.test --cov=microsetta_admin

install: all
	$(PYTHON) setup.py install

dev: all
	pip install -e .

clean: distclean

distclean: ;
