FROM alpine:3.20

RUN apk add --no-cache py3-fontforge

RUN mkdir -p /app
WORKDIR /app