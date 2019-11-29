FROM golang:1.13.4
LABEL author="Alexey Yakimovich"

ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/alexeyyakimovich/govvv-builder"

RUN go get github.com/ahmetb/govvv

RUN mkdir /src

VOLUME ["/src"]