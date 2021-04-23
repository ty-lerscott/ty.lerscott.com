#!/bin/bash
export $(egrep -v '^#' ./client/.env.local | xargs)

echo "DROPPING $DB_NAME..."

# drop all the tables in the database
for i in `mysql -h$DB_HOST -u$DB_USER -p$DB_PASS $DB_NAME -e "show tables" | grep -v Tables_in` ; do  echo $i && mysql -h$DB_HOST -u$DB_USER -p$DB_PASS $DB_NAME -e "SET FOREIGN_KEY_CHECKS = 0; drop table $i ; SET FOREIGN_KEY_CHECKS = 1" ; done

echo "$DB_NAME - $i HAS BEEN DROPPED"