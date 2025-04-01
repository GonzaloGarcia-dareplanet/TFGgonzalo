FROM debian:latest 
RUN apt-get update && apt-get install -y apache2
COPY limelight/limelight-html/index.html /var/www/html/index.html
EXPOSE 80
RUN apache2ctl configtest
RUN apache2ctl status
CMD apache2ctl -D FOREGROUND