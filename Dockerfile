# syntax = docker/dockerfile:experimental

FROM debian:buster as builder
RUN mkdir -p /tmp/test
RUN echo "hello!" > /tmp/test/greeting

FROM debian:buster
RUN --mount=type=bind,target=/tmp/test,source=/tmp/test,from=builder cat /tmp/test/greeting
