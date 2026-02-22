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
	python3 -m pip install --upgrade dist/*.whl

uninstall:
	python3 -m pip uninstall имя-пакета

lint:
	poetry run ruff check .



