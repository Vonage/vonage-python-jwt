.PHONY: clean test build coverage install release

coverage:
	coverage run --source vonage_jwt --omit *__init__.py -m pytest -v
	coverage html

test:
	python -m pytest -vv

clean:
	rm -rf dist build

build:
	python -m build

release:
	python -m twine upload dist/*

install: requirements

requirements: requirements.txt
	python -m pip install --upgrade pip setuptools
	python -m pip install -r requirements.txt
	python -m pip freeze > .requirements.txt
