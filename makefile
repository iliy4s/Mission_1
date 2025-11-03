# mission_1 makefile 
# make build : to build a docker image 
# make test : to test the app inside the container
# make run : to run the app
# make lint : to check the docker file
# make clean : to stop and clean all the containers/images
APP=mission_1-web
TAG=latest

build:
	docker compose -t $(APP):$(TAG) .
test:
	docker compose ecex web pytest -v
run:
	docker compose up
lint:
	docker compose ecex wed flake8 app
clean:
	docker compose down --rmi all --volumes