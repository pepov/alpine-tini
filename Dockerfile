FROM alpine:3.7

RUN apk -U add \
    tini=0.16.1-r0 \
    bash=4.4.19-r1

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["bash"]