FROM alpine as builder
COPY data.txt /tmp/

FROM fedora as final
COPY --from=builder tmp/data.txt /
