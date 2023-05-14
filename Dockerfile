FROM alpine:3.16

WORKDIR /workspaces/jsxm

COPY ./ ./

RUN apk add npm \
  && npm install --global http-server
ENTRYPOINT [ "http-server /workspaces/jsxm" ]