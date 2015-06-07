#!/usr/bin/env python
# -*- coding: utf-8 -*-

import zmq
import uuid

#  Prepare our context and sockets
context = zmq.Context()
socket = context.socket(zmq.REQ)

broker = os.environ.get('BROKER', 'tcp://localhost:5559')
socket.connect(broker)

my_id = uuid.uuid1()

#  Do 25 requests, waiting each time for a response
for request in range(0,25):
    socket.send(b"Hello #{} from {}".format(request, my_id))
    message = socket.recv()
    print("Received reply %s [%s]" % (request, message))
