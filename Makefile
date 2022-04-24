.PHONY: all-tests
all-tests: install
	poetry run pytest -vv tests

.PHONY: unit-tests
unit-tests: install
	poetry run pytest -vv tests/unit

.PHONY: e2e-tests
e2e-tests: install
	poetry run pytest -vv tests/e2e

.PHONY: integration-tests
integration-tests: install
	poetry run pytest -vv tests/integration

install: pyproject.toml
	poetry install
