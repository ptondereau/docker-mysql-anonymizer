#!/bin/sh
set -ve

# Mount dump
exec sh -ec "echo $DUMP | mysql -h mariadb $DB_NAME"

# Re-dump
exec sh -ec "mysqldump -v -h mariadb -P 3306 -u root -psecret \
	$DB_NAME \
	| python anonymize.py anonymize.yml"
