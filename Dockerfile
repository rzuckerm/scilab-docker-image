FROM ubuntu:22.04

COPY SCILAB_* /tmp/
ENV DEBIAN_FRONTEND=non-interactive
RUN apt-get update && \
    apt-get install -y scilab 
