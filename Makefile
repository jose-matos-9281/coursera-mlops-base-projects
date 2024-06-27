install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv  --cov=main test_app.py

format:
	black *.py

lint:
	pylint --disable=R,C main.py

run:
	uvicorn main:app --reload 

all:	install test lint

