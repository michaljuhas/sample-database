# How to import the database

## 1. Download the SQL files

Here's a direct link to download two SQL files from Dropbox:

https://www.dropbox.com/sh/qlzk2hdr5zfdydy/AACn_O87ALIBA3rG_oXuYUBoa?dl=0​

## 2. Load to your local database

Now, you need to load the data to your local MySQL database.

OPTIONAL: You may have to create the database before loading (P.S: You get the mysql password when you download mysql: SAVE IT).

* `mysql create database sample_ip`
* `mysql create database sample_staff`

**First,** load the `sample_ip` database:

```
mysql -u root sample_ip < sample_ip.sql
```

**Second,** load the `sample_staff` database:

```
mysql -u root sample_staff < sample_staff.sql
```

## ...or if you use Workbench

You can also import the `.sql` files to MySQL Workbench. Just select in menu `File - Run SQL Script`. No need to "Open" it, just Run it.


## ℹ️ info

Quite a lot of people ask why the `user_stat` table is empty. It's intentional - you will fill it in one of the lessons. Have fun! :)

## Enjoy the course

And you're done! Enjoy and check my course on Udemy:

* [Practice advanced SQL with MySQL](https://www.udemy.com/practice-advanced-sql-with-mysql/)
