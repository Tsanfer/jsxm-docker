FROM alpine:3.16

WORKDIR /workdir

COPY ./ ./

RUN apk add npm \
  && npm install --global http-server
CMD [ "http-server" ]