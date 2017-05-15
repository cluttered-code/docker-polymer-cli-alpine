FROM node:6-alpine

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

# Install polymer and bower
RUN apk update \
  && apk upgrade \
  && apk add --no-cache git \
  && npm install -g polymer-cli bower