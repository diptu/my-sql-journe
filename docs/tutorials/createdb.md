# 📚 MySQL 1.1: `CREATE DATABASE` Statement

The `CREATE DATABASE` statement in MySQL is used to **create a new database** where you can later create tables, views, and store data.

Let's learn it with a simple example:

## Example: Create a Database Named `demo`

```sql
CREATE DATABASE IF NOT EXISTS demo;
```

## CREATE DATABASE:
- `CREATE DATABASE` command creates a new database in the MySQL server.
- `demo`: This is the name of the new database.You can choose any valid name, but it must be unique (not already existing).

## Naming Rules:

- Use only letters, numbers, and underscores (_).Avoid using spaces or special characters.

## How to See All Databases

```sql
SHOW DATABASES;
```
## Displaying Table Structure
```sql
DESCRIBE employees;
```

## 📚 References

- [MySQL CREATE Database Tutorial – MySQL Tutorial](https://www.mysqltutorial.org/mysql-administration/mysqladmin-create-database/)
