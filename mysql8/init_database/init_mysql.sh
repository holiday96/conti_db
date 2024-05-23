#!/bin/sh

echo " ================== start to initialization of database ..."

export MYSQL_PWD=root


mysql -uroot < docker-entrypoint-initdb.d/init/create_database.sql
mysql -uroot < docker-entrypoint-initdb.d/init/grant_unittest.sql

export MYSQL_PWD=unittest

echo " ======  creating utc_java ..."
mysql -uunittest utc_java < docker-entrypoint-initdb.d/init/utc_java/data-definition.sql

echo " ================== initialization of database finished successfully...."
