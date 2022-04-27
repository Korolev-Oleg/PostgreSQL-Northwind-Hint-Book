# PostgreSQL Northwind Hint Book

> Python3,
> pgsql=14

## Manual installing PostgreSQL In Fedora 35

For other distros, look [Linux downloads](https://www.postgresql.org/download/linux/) page.

```shell
# Install the repository RPM:
sudo dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/F-35-x86_64/pgdg-fedora-repo-latest.noarch.rpm

# Install PostgreSQL:
sudo dnf install -y postgresql14-server

# Optionally initialize the database and enable automatic start:
sudo /usr/pgsql-14/bin/postgresql-14-setup initdb
sudo systemctl enable postgresql-14
sudo systemctl start postgresql-14
```

Enable and start postgresql service in pure-linux
```shell
sudo systemclt enable postgresql.service
sudo systemclt start postgresql.service
```

For windows-subsystem-linux
```shell
sudo service postgresql start
```

Change password for user `postgres`

```shell
sudo passwd postgres
```

## Build Northwind

```shell
# Create northwind_admin user. Don't forgot change password
sudo -u postgres psql -c "CREATE USER northwind_admin WITH PASSWORD '___NORTHWIND_ADMIN_PASSWORD___';" 

# Create Northwind Database
sudo -u postgres createdb northwind --username postgres

# Grant all privileges to northwind_admin
sudo -u postgres psql northwind -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA  public TO northwind_admin;"
```

Execute northwind sql.

```shell
sudo -u postgres psql northwind -f ./northwind.sql
```

## Resources

* [Fofanov Ilya - Practice SQL and PostgreSQL course ](https://www.udemy.com/course/bestpostgres/)
* [PostgreSQL docs](https://www.postgresql.org/docs/)
* [Alan Beaulieu - Learning SQL 3rd Edition](https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/)
* [PostgreSQL. SQL Basics](https://www.postgrespro.ru/education/books/sqlprimer)
