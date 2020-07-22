FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV PATH $PATH:/var/www/html/bin:/usr/local/bin

# Install PHP
RUN apt-get -y update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get -y update && \
    apt-get install -y php && \
    apt-get install -y php-fpm && \
    apt-get install -y php-pgsql
    
# Install Nginx
RUN apt-get install -y nginx
ADD default /etc/nginx/sites-available/default


# Install Essential Tools
RUN apt-get install -y wget && \
    apt-get install -y git

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443


ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 715 /usr/local/bin/docker-entrypoint.sh 
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
