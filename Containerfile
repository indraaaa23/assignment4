FROM fedora:latest
RUN dnf -y upgrade && dnf -y install tuxpaint vim httpd && mkdir -p /var/www/html/
COPY myinfo.html /var/www/html/
EXPOSE 80/tcp

ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
