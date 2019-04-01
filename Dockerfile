FROM debian:jessie-slim

RUN apt-get update && apt-get -y install curl

RUN curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | bash && apt-get -y install sysbench

RUN apt-get -y autoremove curl && apt-get -y clean

ENTRYPOINT [ "sysbench" ]

