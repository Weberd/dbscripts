#!/bin/bash
# add --no-data key to dump only schema
DB_HOST=0.0.0.0
DB_USER=dbuser
DB_PREFIX=dbname
CURRENT_DATE=$(date '+%Y%m%d')
mysqldump -u${DB_USER} -p -h {$DB_HOST} -B --add-drop-database --events --routines --triggers --column-statistics=0 ${DB_PREFIX}_db1 ${DB_PREFIX}_db2 | gzip -c > ${CURRENT_DATE}_${DB_PREFIX}.sql.gz
