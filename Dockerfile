FROM nvidia/cuda:11.8.0-devel-ubuntu22.04
#FROM python:3.7-slim

WORKDIR /app
COPY ./requirements.txt .

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y python3-pip wget && \
    pip install -r requirements.txt && \
    ln -s /usr/bin/python3 /usr/bin/python

