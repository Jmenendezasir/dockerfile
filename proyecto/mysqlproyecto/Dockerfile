FROM mysql/mysql-server

COPY ./mysql.sh /var/lib/mysql

EXPOSE 3306 33060

USER root

ENTRYPOINT [ "/var/lib/mysql/mysql.sh" ]