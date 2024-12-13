FROM alpine:3.20

RUN apk add wget gzip

WORKDIR /goatcounter

RUN wget -O goatcounter.gz https://github.com/arp242/goatcounter/releases/download/v2.5.0/goatcounter-v2.5.0-linux-amd64.gz
RUN gzip -d goatcounter.gz
RUN chmod +x goatcounter

ENTRYPOINT ["./goatcounter"]
