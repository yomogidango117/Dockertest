FROM centos:7

RUN echo "now building ishikawa..."

RUN yum -y update
RUN yum -y install php httpd mysql php-mbstring php-xml

RUN yum -y install wget
RUN wget http://ja.wordpress.org/latest-ja.tar.gz -P /tmp/

WORKDIR /tmp
RUN tar zxvf latest-ja.tar.gz
RUN cp -r /tmp/wordpress/* /var/www/html/
RUN chown apache:apache -R /var/www/html

RUN echo "ServerName test:80" >> /etc/httpd/conf/httpd.conf

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "-DFOREGROUND"]
