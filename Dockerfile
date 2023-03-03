FROM eclipse-temurin:17-jdk-jammy

RUN wget https://github.com/renber/pdf-revise/releases/download/1.2.0/pdf-revise.jar --directory-prefix=/

COPY bulk.sh /
RUN ["chmod", "+x", "/bulk.sh"]

WORKDIR /data

ENTRYPOINT ["/bulk.sh"]
