# This Dockerfile is to install, configure and deploy Apache Web Server

FROM ubuntu:20.04

LABEL email=jjaswanth66@gmail.com

WORKDIR /var/www/html

EXPOSE 80
EXPOSE 443

RUN apt-get update && apt-get install -y apache2 

COPY Dockerfile .

COPY index.html .

CMD ["apache2ctl", "-D", "FOREGROUND"]
