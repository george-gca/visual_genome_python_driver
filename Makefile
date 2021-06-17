.PHONY : format
format:
	pre-commit run --all-files

.PHONY : pre-commit-install
pre-commit-install:
	pre-commit install

.PHONY : export-requirements-txt
export-requirements-txt:
	poetry export -f requirements.txt --without-hashes --output requirements.txt
