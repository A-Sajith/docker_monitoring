FROM alpine:latest

RUN apk add --no-cache bash iputils

WORKDIR /monitor

COPY monitor/monitor.sh .

RUN chmod +x monitor.sh

VOLUME ["/data"]

CMD ["./monitor.sh"]