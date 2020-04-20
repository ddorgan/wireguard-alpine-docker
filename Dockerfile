FROM alpine

RUN apk add --no-cache wireguard-tools bash wget openresolv iptables

COPY docker-entrypoint.sh /usr/bin/

VOLUME ["/etc/wireguard"]
EXPOSE 51820/udp

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["wg-quick", "up", "wg0"]

