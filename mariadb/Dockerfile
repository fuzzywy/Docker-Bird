FROM mariadb:10.3.8

COPY ./conf/schema.sql .

CMD mysql -uroot -pmongs -e 'source schema.sql'
