# PostgreSQL Northwind Hint Book

> Python3,
> Fedora=35,
> pgsql=14

## Installing PostgreSQL In Fedora 35

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

Change password for user `postgres`

```shell
sudo passwd postgres
```

## Build Northwind

```shell
# Export postgres bin into PATH
su - postgres
export PATH=$PATH:/usr/pgadmin4/bin

# Create Northwind Database
createdb --encoding UNICODE northwind --username postgres

# Execute northwind sql.
psql -f {PATH_TO_PROJECT}/ ./northwind.sql
```

## Resources

* [Fofanov Ilya - Practice SQL and PostgreSQL course ](https://www.udemy.com/course/bestpostgres/)
* [PostgreSQL docs](https://www.postgresql.org/docs/)
* [Alan Beaulieu - Learning SQL 3rd Edition](https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/)
