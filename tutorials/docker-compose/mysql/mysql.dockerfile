FROM mysql:8.0
RUN touch /var/log/mysql-slowquery.log
RUN chown mysql:mysql /var/log/mysql-slowquery.log
