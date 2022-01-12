FROM ubuntu:16.04
LABEL maintainer='Vinay'

RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN apt-get install git -y

WORKDIR /tmp

RUN wget https://github.com/vinayRaj98/vinayproject/archive/master.zip

RUN unzip master.zip

RUN cp -r vinayproject-master/* /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

