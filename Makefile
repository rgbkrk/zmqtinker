images: pyzmq rrbroker-image rrclient-image rrworker-image

pyzmq:
	docker build -t rgbkrk/pyzmq .

rrbroker-image:
	docker build -t rgbkrk/rrbroker rrbroker

rrclient-image:
	docker build -t rgbkrk/rrclient rrclient

rrworker-image:
	docker build -t rgbkrk/rrworker rrworker


