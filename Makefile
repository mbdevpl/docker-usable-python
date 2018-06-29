# docker-usable-python

all: ubuntu16.04 ubuntu18.04 latest

ubuntu16.04:
	git checkout ubuntu16.04
	time sudo docker build --no-cache --pull -t mbdevpl/usable-python:ubuntu16.04 .
	time sudo docker push mbdevpl/usable-python:ubuntu16.04

ubuntu18.04:
	git checkout ubuntu18.04
	time sudo docker build --no-cache --pull -t mbdevpl/usable-python:ubuntu18.04 .
	time sudo docker push mbdevpl/usable-python:ubuntu18.04

latest:
	git checkout latest
	time sudo docker build --no-cache --pull -t mbdevpl/usable-python:latest .
	time sudo docker push mbdevpl/usable-python:latest

clean:
	sudo docker image rm mbdevpl/usable-python:ubuntu16.04
	sudo docker image rm mbdevpl/usable-python:ubuntu18.04
	sudo docker image rm mbdevpl/usable-python:latest
