FROM node:6-alpine

LABEL maintainer "David Clutter <cluttered.code@gmail.com"

# Install polymer and bower
RUN apk add --no-cache --virtual .build-deps git \
  && npm install -g polymer-cli bower \
  && apk del .build-deps \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["polymer"]