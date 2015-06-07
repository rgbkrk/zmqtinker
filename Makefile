images: pyzmq rrbroker-image rrclient-image rrworker-image

all: images push

pyzmq:
	docker build -t rgbkrk/pyzmq .

rrbroker-image:
	docker build -t rgbkrk/rrbroker rrbroker

rrclient-image:
	docker build -t rgbkrk/rrclient rrclient

rrworker-image:
	docker build -t rgbkrk/rrworker rrworker

push:
	docker push rgbkrk/pyzmq
	docker push rgbkrk/rrworker
	docker push rgbkrk/rrclient
	docker push rgbkrk/rrbroker
