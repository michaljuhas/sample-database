# How to import the database

## 1. Clone repository

1. Create a new directory on your localhost
2. Clone GitHub repository using either SSH or HTTPS URL:

Use HTTPS URL: 

```
git clone https://github.com/michaljuhas/sample-database.git
```

or alternatively the SSH URL: 

```
git clone git@github.com:michaljuhas/sample-database.git
```

You can read more about [Which remote URL should I use?](https://help.github.com/articles/which-remote-url-should-i-use/).

## 2. Unzip SQL files

There are two databases:

* `sample_ip` (a relatively small file)
* `sample_staff` (a large DB file, so I had to split it to 3 files and you'll need to merge them)

### On Mac

Go to the sub-folder `/MySQL/`:

**First,** extract the SQL file from the first archive `sample_ip.tar.gz`:

```
tar -xzf sample_ip.tar.gz
```

**Second,** merge the three files (`sample_staff_aa` + `sample_staff_ab` + `sample_staff_ac`) into one:

```
cat sample_staff_* > sample_staff.tar.gz
```

**Third,** extract the SQL file from the (newly merged) archive `sample_staff.tar.gz`.

```
tar -xzf sample_staff.tar.gz
```

### On Windows

Go to the sub-folder `/MySQL/`:

**First,** extract the first file `sample_ip.tar.gz`. You may want to use [7-Zip](http://www.7-zip.org/).

**Second,** merge the three files (`sample_staff_aa` + `sample_staff_ab` + `sample_staff_ac`) into one:

```
copy /b sample_staff_aa + sample_staff_ab + sample_staff_ac sample_staff.tar.gz
```

**Third,**  extract  the SQL file from the (newly merged) archive `sample_staff.tar.gz`. You may want to use [7-Zip](http://www.7-zip.org/) again.


## 3. Load to your local database

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

## ℹ️ info

Quite a lot of people ask why the `user_stat` table is empty. It's intentional - you will fill it in one of the lessons. Have fun! :)

## Enjoy the course

And you're done! Enjoy and check my course on Udemy:

* [Practice advanced SQL with MySQL](https://www.udemy.com/practice-advanced-sql-with-mysql/)
