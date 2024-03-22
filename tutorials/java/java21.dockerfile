FROM amazoncorretto:21
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

WORKDIR /app

COPY ./app .
ENTRYPOINT [ "/bin/bash", "/app/start.sh" ]
