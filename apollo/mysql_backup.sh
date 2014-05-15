#!/bin/bash
set -e

MYSQL_DB="{{ pillar['apollo']['database']['database'] }}"
MYSQL_HOST="{{ pillar['apollo']['database']['host'] }}"
MYSQL_USER="{{ pillar['apollo']['database']['username'] }}"
MYSQL_PASS="{{ pillar['apollo']['database']['password'] }}"

OUTPUT_PATH='dumps'
NOW=`date +"%Y-%m-%d-%H:%M:%S"`
FILE=${MYSQL_DB}.$NOW.sql.gz

CF_AUTH="https://auth.api.rackspacecloud.com/v1.0"
CF_USER="{{ pillar['apollo']['backups']['username'] }}"
CF_APIKEY="{{ pillar['apollo']['backups']['api_key'] }}"
CF_CONTAINER="{{ pillar['apollo']['backups']['container'] }}"

# Ensure output directory exists
if [ ! -d "$OUTPUT_PATH" ]; then
  mkdir ${OUTPUT_PATH}
fi

# Get sql dump and gzip it
mysqldump -h ${MYSQL_HOST} ${MYSQL_DB} -u ${MYSQL_USER} -p${MYSQL_PASS} | gzip -9 > ${OUTPUT_PATH}/${FILE}

# Upload to rackspace files (private)
swift -A ${CF_AUTH} -U ${CF_USER} -K ${CF_APIKEY} upload --changed ${CF_CONTAINER} ${OUTPUT_PATH}

# Remove the gzip after upload
rm ${OUTPUT_PATH}/*
