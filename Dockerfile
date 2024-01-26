FROM ubuntu:18.04
MAINTAINER LAB DOCKER
RUN apt-get update
RUN apt-get install -y nginx git
EXPOSE 80
VOLUME "/data"
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off ;" ]

