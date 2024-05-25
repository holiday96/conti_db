#!/bin/bash

echo " ================== start to initialization of database ..."

export MYSQL_PWD=root

cd /docker-entrypoint-initdb.d/init

mysql -uroot < create_database.sql
mysql -uroot < grant_unittest.sql

export MYSQL_PWD=unittest

echo " ======  creating utc_java ..."
mysql -uunittest utc_java < utc_java/data-definition.sql

echo " ================== initialization of database finished successfully...."
