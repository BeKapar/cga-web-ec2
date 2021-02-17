FROM alpine:latest
RUN apk upgrade && apk add nginx
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
COPY --chown=nginx:nginx html/ .
EXPOSE 80
CMD [ “nginx”, “-g”, “pid /tmp/nginx.pid; daemon off;” ]