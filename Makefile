install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_application.py

lint:
	pylint --disable=R,C application.py

deploy:
	echo "Deploying app"
	export AWS_DEFAULT_REGION=us-east-1
	eb deploy flask-continuous-delivery-env --region us-east-1

all: install lint test 
