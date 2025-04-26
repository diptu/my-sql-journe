# 📚 MySQL 1.2: `CREATE TABLE` Statement 

For now we will create an example table, later we will make necessary improvents.
The `CREATE TABLE` statement in MySQL is used to **create a new table** in a database.  
Let's understand it using a real-world example:

## Example: `employees` Table

```sql

CREATE TABLE IF NOT EXISTS employees (
  EMPLOYEE_ID int(6) PRIMARY KEY AUTO_INCREMENT,
  FIRST_NAME varchar(20),
  LAST_NAME varchar(25) NOT NULL,
  EMAIL varchar(25) NOT NULL,
  PHONE_NUMBER varchar(20),
  HIRE_DATE date NOT NULL,
  JOB_ID varchar(10) NOT NULL,
  SALARY decimal(8,2),
  COMMISSION_PCT decimal(2,2),
  MANAGER_ID int(6),
  DEPTARTMENT_ID int(4)

);
```
## Key Concepts Highlighted:
- `PRIMARY KEY`: Uniquely identifies each record in the table.

- `AUTO_INCREMENT`: Automatically increases EMPLOYEE_ID for each new row.

- `NOT NULL`: Column must always have a value (cannot be left empty).

- `varchar(n)`: Stores a variable-length string with a maximum of n characters.

- `decimal(m,d)`: Numbers with fixed precision. m = total digits, d = digits after decimal point.

- `date`: Stores dates in YYYY-MM-DD format.


## 📚 References

- [MySQL CREATE TABLE Tutorial – MySQL Tutorial](https://www.mysqltutorial.org/mysql-basics/mysql-create-table/)
