FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV PATH $PATH:/var/www/html/bin:/usr/local/bin

# Install PHP
RUN apt-get -y update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get -y update && \
    apt-get install -y php5.6 && \
    apt-get install -y php5.6-fpm
    
# Install Nginx
RUN apt-get install -y nginx
ADD default /etc/nginx/sites-available/default


# Install Essential Tools
RUN apt-get install -y wget && \
    apt-get install -y git

# Install wordpress & pg4wd
RUN cd /var/www/html  && \
    wget https://wordpress.org/latest.tar.gz && \
    tar -xvf latest.tar.gz && \
    mv wordpress/* ./ && \
    cd wp-content && \
    git clone https://github.com/kevinoid/postgresql-for-wordpress.git && \
    mv postgresql-for-wordpress/pg4wp pg4wp && \
    chown -R www-data:www-data ./pg4wp && \
    cp pg4wp/db.php ./ && \
    chown -R www-data:www-data /var/www/html 


# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443


ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 715 /usr/local/bin/docker-entrypoint.sh 
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
