.PHONY : pre-commit-install export-requirements-txt install format lint types

pre-commit-install:
	pre-commit install

export-requirements-txt:
	poetry export -f requirements.txt --without-hashes --output requirements.txt

install:
	poetry run python -m pip install -U pip
	poetry install

format:
	pre-commit run --all-files

lint:
	poetry run flake8 visual_genome

types:
	poetry run mypy visual_genome

static-checks: lint lint-security types
