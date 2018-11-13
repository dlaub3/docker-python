FROM nginx:latest
RUN  rm -R /etc/nginx/conf.d/
RUN mkdir -p /var/www/app
RUN groupadd 1000
RUN usermod -a -G 1000 nginx