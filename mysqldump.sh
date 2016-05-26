#!/bin/bash

# This is just for me to easily export the most recent version of the test database

mysqldump -u root --databases sample_ip > ~/Documents/sample-database/MySQL/sample_ip.sql
mysqldump -u root --databases sample_staff > ~/Documents/sample-database/MySQL/sample_staff.sql

tar -cvvzf sample_ip.tar.gz ./sample_ip.sql
tar -cvvzf sample_staff.tar.gz ./sample_staff.sql

split -b 50000000 sample_staff.tar.gz "sample_staff_"
