FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y apache2 && \
    apt clean
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
