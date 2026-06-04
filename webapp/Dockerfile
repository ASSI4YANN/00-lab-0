FROM nginx:alpine
LABEL maintainer="contact@eazytraining.fr"\
      description="Serveur nginx pour le site static à partir de local"
RUN apk update && rm -rf /usr/share/nginx/html/*
ADD website /usr/share/nginx/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
