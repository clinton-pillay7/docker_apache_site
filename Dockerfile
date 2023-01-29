FROM ubuntu
MAINTAINER clinton.pillay@outlook.com
Run apt update
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt clean
COPY index.html /var/www/html
RUN   echo "Servername localhost" >> /etc/apache2/apache2.conf


EXPOSE 80


CMD ["apache2ctl", "-D", "FOREGROUND"]
