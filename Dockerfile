FROM debian:stable-slim

ENV DST_USER_DATA_PATH=/data
ENV CLUSTER_NAME=MyDediServer

RUN dpkg --add-architecture i386
RUN apt-get update -y
RUN apt-get install -y --no-install-recommends ca-certificates lib32stdc++6 libcurl3-gnutls:i386 libcurl3-gnutls wget tar
RUN apt-get install -y --no-install-recommends lib32gcc-s1 || apt-get install -y --no-install-recommends lib32gcc1

RUN groupadd dst
RUN useradd -g dst dst || true
RUN mkdir -p "$DST_USER_DATA_PATH"
RUN chown -R dst:dst $DST_USER_DATA_PATH

COPY scripts /usr/local/bin/

EXPOSE 8768-8769 10899-11099 27015-27036
ENTRYPOINT [ "entrypoint.sh" ]
