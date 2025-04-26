# 📚 MySQL 2.1: `INSERT INTO` Statement (Single Row)

The `INSERT INTO` statement is used to **add new rows** into a table in MySQL.

Let's learn how to insert a **single row** step-by-step!

---

## ✨ Basic Syntax

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

## EXample

```sql
INSERT INTO employees (
  FIRST_NAME,
  LAST_NAME,
  EMAIL,
  PHONE_NUMBER,
  HIRE_DATE,
  JOB_ID,
  SALARY,
  COMMISSION_PCT,
  MANAGER_ID,
  DEPARTMENT_ID
)
VALUES (
  'John',
  'Doe',
  'john.doe@example.com',
  '123-456-7890',
  '2024-04-26',
  'DEV01',
  60000.00,
  0.05,
  101,
  10
);

```

## Key Points to Remember
- Always list column names in the same order as the values.

- String values (varchar, date) must be enclosed in single quotes '...'

- Numeric values (int, decimal) are written without quotes.

- You can omit columns that have default values or are set to auto-increment.

## Insert Without Specifying Columns

If you want to insert values into all columns (except auto-increment ones) in exact order, you can simplify:

```sql
INSERT INTO employees
VALUES (NULL, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2024-04-26', 'HR01', 50000.00, 0.02, 102, 20);
```

## 📚 References

- [MySQL INSERT Tutorial – MySQL Tutorial](https://www.mysqltutorial.org/mysql-basics/mysql-insert/)
