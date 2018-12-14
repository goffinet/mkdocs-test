FROM jfloff/alpine-python:3.6-slim

RUN \
  apk add --no-cache \
    git \
    git-fast-import \
    openssh \
  && pip install mkdocs-material
