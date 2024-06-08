FROM alpine:3.20

RUN apk add --no-cache py3-fontforge=20230101-r5

RUN mkdir -p /app
WORKDIR /app