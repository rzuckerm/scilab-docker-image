FROM ubuntu:22.04

COPY SCILAB_* /tmp/
COPY run-scilab /usr/local/bin
ENV DEBIAN_FRONTEND=non-interactive
RUN apt-get update && \
    apt-get install -y scilab && \
    chmod +x /usr/local/bin/run-scilab
