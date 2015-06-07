images: pyzmq rrbroker rrclient rrworker

pyzmq:
	docker build -t rgbkrk/pyzmq .

rrbroker:
	docker build -t rgbkrk/rrbroker rrbroker

rrclient:
	docker build -t rgbkrk/rrclient rrclient

rrworker:
	docker build -t rgbkrk/rrworker rrworker


