ARG BASE=ubuntu:latest
ARG TAG=edge-dist
FROM ghcr.io/minizinc/minizinc:${TAG} AS composer
ARG TARGETPLATFORM

FROM ${BASE}

RUN [ ! -f "/etc/alpine-release" ] || apk add --no-cache libstdc++

COPY --from=composer /opt/minizinc /usr/local
