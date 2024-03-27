FROM amazoncorretto:21
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

WORKDIR /app

COPY ./java/app .
CMD ["tail", "-f","/dev/null"]
#ENTRYPOINT [ "/bin/bash", "/app/start.sh" ]
