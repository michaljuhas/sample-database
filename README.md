# Sample database

## Import database

### 1. Clone repository

* Create a new directory
* Clone GitHub repository `git clone git@github.com:michaljuhas/sample-database.git`

### 2. Unzip SQL files

Go to a sub-folder - either `/MySQL/` or `/PostgreSQL/` and unzip all `.zip` files.

### 3. Load to your local database

Load the data to your local MySQL database

`mysql -u root sample_ip < sample_ip.sql`
`mysql -u root sample_staff < sample_staff.sql`

## Export

`mysqldump -u root --databases sample_ip > sample_ip.sql`
`mysqldump -u root --databases sample_staff > sample_staff.sql`
