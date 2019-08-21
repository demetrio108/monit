FROM alpine:3.10

RUN apk add --no-cache monit
COPY monitrc entrypoint.sh /

EXPOSE 2812

VOLUME /etc/monit.d

ENV USERNAME=admin
ENV PASSWORD=monit

CMD ["/entrypoint.sh"]
