FROM base
RUN apt update && apt install -yq --no-install-recommends \
    software-properties-common

EXPOSE 80 8081
COPY ./composer.sh /root
RUN chmod o+x /root/composer.sh
COPY ./git.sh /root
RUN chmod o+x /root/git.sh
COPY ./laravel.sh /root
RUN chmod o+x /root/laravel.sh

RUN apt-get update && apt-get install -y php \
    php-cli \
    php-fpm \
    php-json \
    php-common \
    php-mysql \
    php-zip \
    php-gd \
    php-mbstring \
    php-curl \
    php-xml \
    php-pear \ 
    php-bcmath \
    apache2 \
    nmap

RUN /root/composer.sh
# INSTALACIÓN LARAVEL 8

RUN /root/laravel.sh

COPY ./auth.php /var/www/html/apiproyecto/config

CMD apachectl -D FOREGROUND

ENTRYPOINT [ "/root/git.sh" ]