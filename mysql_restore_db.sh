#!/bin/bash
# -f means continue even if an SQL error occurs
DB_USER=example
DB_PASSWORD=example
DB_HOST=127.0.0.1
DB_FILE=20230508_db.sql.gz
gunzip < ${DB_FILE} | mysql -f --host=${DB_HOST} -u${DB_USER} -p${DB_PASSWORD}
