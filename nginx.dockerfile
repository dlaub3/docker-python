FROM nginx:latest
RUN  rm -R /etc/nginx/conf.d/
RUN mkdir -p /var/www/app