FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y apache2 && \
    apt clean
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
