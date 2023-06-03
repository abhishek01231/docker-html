FROM ubuntu:18.04  

LABEL maintainer="abhishek01231" 

RUN  apt-get -y update && apt-get -y install nginx

COPY files/default

COPY files/index.html

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
