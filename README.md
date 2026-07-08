# 🗄️ SQL — LeetCode Solutions

A structured collection of SQL solutions from LeetCode, organized by difficulty.  
Great for revision, interview prep, and building a strong SQL foundation.

---

## 📁 Repository Structure

```
SQL-LeetCode/
│
├── Easy/         → Fundamentals: SELECT, WHERE, ORDER BY, GROUP BY
├── Medium/       → Joins, Subqueries, Aggregations, Window Functions
└── Hard/         → Complex Joins, CTEs, Advanced Filtering
```

---

## 🧠 Concepts Covered

| Topic | Examples |
|---|---|
| `SELECT` & Filtering | WHERE, LIKE, BETWEEN, IN |
| Aggregations | COUNT, SUM, AVG, MIN, MAX |
| Grouping | GROUP BY, HAVING |
| Sorting | ORDER BY, LIMIT |
| Joins | INNER, LEFT, RIGHT, FULL OUTER |
| Subqueries | Correlated, Nested |
| String Functions | UPPER, LOWER, CONCAT, SUBSTR |
| Date Functions | DATEADD, DATEDIFF, FORMAT |
| Window Functions | ROW_NUMBER, RANK, DENSE_RANK, LEAD, LAG |
| CTEs | WITH clause, Recursive CTEs |

---

## 📂 File Format

Every `.sql` file follows this structure for easy revision:

```sql
-- Problem  : Problem Name Here
-- Difficulty: Easy / Medium / Hard
-- Link     : https://leetcode.com/problems/...


-- Your solution here
SELECT column1 FROM table_name WHERE condition;
```

---

## 📊 Progress Tracker

| Difficulty | Solved |
|---|---|
| 🟢 Easy | 0 |
| 🟡 Medium | 0 |
| 🔴 Hard | 0 |
| **Total** | **0** |

> Update this table as you solve more problems.

---

## 🚀 Quick Revision Guide

### Most Used SQL Commands

```sql
-- Basic Select
SELECT column1, column2 FROM table_name WHERE condition;

-- Aggregation with Grouping
SELECT department, COUNT(*) FROM employees GROUP BY department HAVING COUNT(*) > 5;

-- Inner Join
SELECT a.name, b.salary FROM employees a INNER JOIN salaries b ON a.id = b.emp_id;

-- Subquery
SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- Window Function
SELECT name, salary, RANK() OVER (ORDER BY salary DESC) AS rnk FROM employees;
```

---

## 🔗 Useful Resources

- [LeetCode SQL Problems](https://leetcode.com/problemset/database/)
- [W3Schools SQL Reference](https://www.w3schools.com/sql/)
- [SQLZoo Practice](https://sqlzoo.net/)
- [Mode SQL Tutorial](https://mode.com/sql-tutorial/)

---

## 👤 About

### **Ayush Ghagre**
**Data Analyst | SQL • Python • Power BI • Excel**

**LinkedIn:** [linkedin.com/in/ayush-ghagre](https://www.linkedin.com/in/ayush-ghagre/)

**GitHub:** [github.com/AyushGhagre-09](https://github.com/AyushGhagre-09)

> *"The best way to learn SQL is to write SQL."*

---

⭐ If this repo helped you, consider giving it a star!
