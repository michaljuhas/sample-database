#!/bin/bash

# This is just for me to easily export the most recent version of the test database

cd ~/Documents/sample-database/MySQL/

mysqldump -u root --databases sample_ip > sample_ip.sql
mysqldump -u root --databases sample_staff > sample_staff.sql

tar -zc sample_ip.sql > sample_ip.tar.gz
tar -zc sample_staff.sql > sample_staff.tar.gz

split -b 50000000 sample_staff.tar.gz "sample_staff_"
