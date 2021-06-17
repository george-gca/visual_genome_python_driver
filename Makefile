.PHONY : format
format:
	pre-commit run --all-files

.PHONY : pre-commit-install
pre-commit-install:
	pre-commit install
