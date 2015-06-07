FROM rgbkrk/pyzmq

ADD rrbroker.py /
USER nobody

# ROUTER
EXPOSE 5559

# DEALER
EXPOSE 5560

CMD python /rrbroker.py
