#
#   Request-reply service in Python
#   Connects REP socket to tcp://localhost:5560
#   Expects "Hello" from client, replies with "World"
#

import uuid
import zmq
import os

context = zmq.Context()
socket = context.socket(zmq.REP)

broker = os.environ.get('BROKER', 'tcp://localhost:5560')
socket.connect(broker)

my_id = uuid.uuid1()

while True:
    message = socket.recv()
    print("Received request: {} on {}".format(message, my_id))
    socket.send(b"World")
