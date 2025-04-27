# 📚 MySQL: `SELECT` Statement Comprehensive Tutorial

The `SELECT` statement in MySQL is used to **retrieve data** from one or more tables.  
It is one of the most **important and frequently used** SQL commands.

Mastering `SELECT` is essential for querying and analyzing database information effectively. 🚀

---

### ✨ Basic Syntax

```sql
SELECT * | { [DISTINCT] column | expression [alias], ... }
FROM table_name;
```

### Simple Example:

```sql
SELECT column1, column2, ...
FROM table_name;
```
- `*` selects all columns.

- `DISTINCT` removes duplicate results.

- alias allows you to rename a column or expression temporarily.

### 📋 Selecting All Columns
- Use the `*` wildcard to retrieve every column:

```sql
SELECT * FROM employees;
```
- ✅ This returns all the data for every employee in the employees table.
  
### 📋 Selecting Specific Columns
- Select only the needed columns:
```sql
SELECT FIRST_NAME, LAST_NAME, EMAIL
FROM employees;
```
- ✅ Fetches only FIRST_NAME, LAST_NAME, and EMAIL columns, making queries faster and results cleaner.
  
### 🧮 Using Arithmetic Operators in SELECT
You can perform calculations inside your SELECT statements:
```sql
SELECT last_name, salary, 12 * (salary + 100)
FROM employees;
```
- ✅ Calculates the annual salary plus $100 bonus.

### ✏️ Using Column Aliases

- Give a friendly name to columns or calculations using aliases:
```sql
SELECT last_name AS "Name", salary * 12 AS "Annual Salary"
FROM employees;
```
- ✅ Aliases make output easier to understand.

### 🔗 Using Concatenation Operator
- You can combine strings using the CONCAT function:
```sql
SELECT CONCAT(last_name, ' is a ', job_id) AS "Employee Details"
FROM employees;
```
- ✅ Creates a readable string about each employee's job.

### 🚫 Eliminating Duplicate Rows with DISTINCT
- Remove duplicates using DISTINCT:
```sql
SELECT DISTINCT department_id
FROM employees;
```
- ✅ Returns each department ID only once, even if multiple employees belong to the same department.

### 🔍 Filtering Results Using WHERE Clause
- Fetch rows that meet a specific condition:

```sql
SELECT FIRST_NAME, LAST_NAME
FROM employees
WHERE JOB_ID = 'DEV02';
```
- ✅ Returns employees whose job ID is DEV02.

### 🎯 Filtering Examples
-Limiting Results by Department
```sql
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;
```
###  Filtering with Strings and Dates
```sql
SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'WHALEN';
```
- String comparisons must match exactly (case-sensitive by default).

### Using Comparison Operators
```sql
SELECT last_name, salary
FROM employees
WHERE salary <= 3000;
```
- ✅ Returns employees earning $3000 or less.

### Using BETWEEN Operator
```sql
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;
```
- ✅ Selects salaries between 2500 and 3500 inclusive.

### Using IN Operator
```sql
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100, 101, 201);
```
- ✅ Returns employees managed by either 100, 101, or 201.
- 
### 📈 Sorting Results with ORDER BY
- Sort the output in ascending (ASC) or descending (DESC) order:

```sql
SELECT FIRST_NAME, SALARY
FROM employees
ORDER BY SALARY DESC;
```
- ASC is default (smallest to largest).
- DESC sorts largest to smallest.
- ✅ Retrieves employees sorted by highest salary first.

### 🧩 Sorting by Multiple Columns
- You can sort first by one column, then by another:

```sql
SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id ASC, salary DESC;
```
- ✅ First sorts by department_id, then within each department sorts by salary descending.

### 🚀 Combining Clauses Example
- Use WHERE, ORDER BY, and LIMIT together:

```sql
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM employees
WHERE SALARY > 60000
ORDER BY SALARY DESC
LIMIT 3;
```
- ✅ Returns the top 3 employees earning above 60,000, ordered by highest salary first.

### 🔥 Key Takeaways
- `SELECT` is used to fetch data.
- Use `WHERE` to filter rows.
- Use `ORDER` BY to sort rows.
- Use `DISTINCT` to remove duplicates.
- Use `LIMIT` to restrict the number of rows returned.
- Use aliases to make outputs more readable.
-Operators like `BETWEEN`, `IN`, `CONCAT`, and arithmetic help in building powerful queries.


## Leet code problem :
- ![Easy](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
[1683. Invalid Tweets](./1683.md)

- ![Easy](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
[2356. Number of Unique Subjects Taught by Each Teacher](./2356.md)

- ![Easy](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
[1517. Find Users With Valid E-Mails](./1517.md)

- ![Difficulty: Medium](https://img.shields.io/badge/Difficulty-Medium-yellow)
[1934. Confirmation Rate](./1934.md)

- ![Difficulty: Medium](https://img.shields.io/badge/Difficulty-Medium-yellow)
[1907. Count Salary Categories](./1907.md)


## 📚 References
[MySQL SELECT Tutorial – MySQL Tutorial](https://www.mysqltutorial.org/mysql-basics/mysql-select/)

