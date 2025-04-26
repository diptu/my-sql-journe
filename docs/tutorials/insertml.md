# 📚 MySQL 2.2: `INSERT INTO` Statement (Multiple Rows)

In MySQL, you can insert **multiple rows at once** using a single `INSERT INTO` statement.  
This method is **faster and more efficient** than inserting rows one by one.

---

## ✨ Basic Syntax

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES 
  (value1a, value2a, value3a, ...),
  (value1b, value2b, value3b, ...),
  (value1c, value2c, value3c, ...);
```
### Key concepts
- `table_name`: Name of the table.

- Each set of parentheses `()` contains the values for one row.

-Multiple rows are separated by commas `,`

# Insert multiple employees at once:

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
VALUES
  ('Alice', 'Brown', 'alice.brown@example.com', '111-222-3333', '2024-04-26', 'HR02', 55000.00, 0.03, 101, 20),
  ('Bob', 'Green', 'bob.green@example.com', '444-555-6666', '2024-04-26', 'DEV02', 70000.00, 0.05, 102, 30),
  ('Charlie', 'White', 'charlie.white@example.com', '777-888-9999', '2024-04-26', 'SALES01', 65000.00, 0.04, 103, 40);

```
### Key Concepts:
- Three rows are inserted with a single command.

- `EMPLOYEE_ID` is auto-generated for each inserted row.

### Insert Without Listing Columns
- You can insert multiple rows without listing column names (be careful with the order)
  
```sql
INSERT INTO employees
VALUES
  (NULL, 'David', 'King', 'david.king@example.com', '123-123-1234', '2024-04-26', 'MGR01', 80000.00, 0.06, 100, 50),
  (NULL, 'Eva', 'Stone', 'eva.stone@example.com', '321-321-4321', '2024-04-26', 'DEV03', 62000.00, 0.02, 101, 20);

```

## 📚 References

- [MySQL INSERT Tutorial – MySQL Tutorial](https://www.mysqltutorial.org/mysql-basics/mysql-insert/)
