FROM debian:jessie-slim

LABEL Description="go-tcp-proxy docker iage" Vendor="Tyk" Version=$TYKVERSION

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --no-install-recommends \
            curl ca-certificates apt-transport-https \
 && curl -L https://packagecloud.io/tyk/tyk-pump/gpgkey | apt-key add - \
 && apt-get autoremove -y \
 && rm -rf /root/.cache


RUN mkdir -p /opt/tcp-proxy
COPY proxy /opt/tcp-proxy/proxy
COPY ingress.sh /opt/tcp-proxy/ingress.sh

RUN chmod +x /opt/tcp-proxy/proxy
RUN chmod +x /opt/tcp-proxy/ingress.sh

VOLUME ["/opt/tcp-proxy"]

WORKDIR /opt/tyk-ara

CMD ["/opt/tcp-proxy/ingress.sh"]
