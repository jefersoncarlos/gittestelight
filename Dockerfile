
ckerfile that modifies oraclelinux:6.6 to include an Apache HTTP server
FROM oraclelinux:6.6
MAINTAINER A N Other <another@mydom.com>
RUN sed -i -e '/^\[main\]/aproxy=http://proxy.mydom.com:80' /etc/yum.conf
RUN yum -y install httpd -f
RUN echo "HTTP server running on guest" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND

