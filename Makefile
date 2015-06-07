images: pyzmq rrbroker rrclient rrworker

pyzmq:
	docker build -t rgbkrk/pyzmq .

$@:
	docker build -t rgbkrk/$@ $@
