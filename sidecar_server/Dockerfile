FROM alpine:latest
MAINTAINER chen@dwolla.com
USER root
ADD sidecar_server.sh /usr/local/src/sidecar_server/sidecar_server.sh
ADD sidecar_server.py /usr/local/src/sidecar_server/sidecar_server.py

RUN apk add --update python &&\
    apk add -U iproute2 && ln -s /usr/lib/tc /lib/tc &&\
    apk add -U iptables &&\
    chmod +x /usr/local/src/sidecar_server/sidecar_server.sh 

ENV LIMIT_PORT 5678

EXPOSE 5678

ENTRYPOINT ["/usr/local/src/sidecar_server/sidecar_server.sh"]
