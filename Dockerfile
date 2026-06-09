FROM ubuntu:18.04
LABEL maintainer="Yann Assi <yann84637@gmail.com>"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/ASSI4YANN/website.git /var/www/html/
#ADD static-website-example/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
