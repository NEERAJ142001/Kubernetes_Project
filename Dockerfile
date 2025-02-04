FROM  centos:centos7.9.2009
MAINTAINER vikashashoke@gmail.com
RUN yum update -y
RUN yum install -y httpd zip unzip
RUN yum clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 



