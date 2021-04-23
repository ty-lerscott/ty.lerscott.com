#!/bin/bash
export $(egrep -v '^#' ./client/.env.local | xargs)

echo "UPLOADING to $DB_NAME..."

# drop all the tables in the database
mysql -h$DB_HOST -u$DB_USER -p$DB_PASS -D $DB_NAME < $DB_BACKUP

echo "CONTENTS HAVE BEEN UPDATED TO $DB_NAME"