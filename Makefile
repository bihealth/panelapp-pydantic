.PHONY: default
default:

.PHONY: format
format: black isort

.PHONY: lint
lint: flake8 isort-check black-check pyright

.PHONY: test
test:
	pipenv run pytest .

.PHONY: test-update-snapshots
test-update-snapshots:
	pipenv run pytest . --snapshot-update

.PHONY: black
black:
	pipenv run black -l 100 .

.PHONY: black-check
black-check:
	pipenv run black -l 100 --check .

.PHONY: isort
isort:
	pipenv run isort --force-sort-within-sections --profile=black .

.PHONY: isort-check
isort-check:
	pipenv run isort --force-sort-within-sections --profile=black --check .

.PHONY: flake8
flake8:
	pipenv run flake8

.PHONY: pyright
pyright: export MYPYPATH=stubs
pyright:
	pipenv run pyright panelapp_pydantic tests

.PHONY: deps
deps:
	pipenv install --categories=packages,dev-packages
