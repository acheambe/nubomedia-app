FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

RUN mkdir /tmp/magic-mirror
ADD nubomedia-magic-mirror-6.2.2-SNAPSHOT.jar /tmp/magic-mirror/
ADD keystore.jks /

EXPOSE 8080 8443 443

ENTRYPOINT java -Dapp.server.url=https://dl.dropboxusercontent.com/u/19675892 -jar /tmp/magic-mirror/nubomedia-magic-mirror-6.2.2-SNAPSHOT.jar
