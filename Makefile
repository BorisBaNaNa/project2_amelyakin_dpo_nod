Sinstall:
	poetry install

project:
	poetry run project

build:
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install dist/*.whl

update: build
	python3 -m pip install --upgrade --no-index --find-links=dist/ primitive-db

uninstall:
	python3 -m pip uninstall primitive_db

lint:
	poetry run ruff check .



