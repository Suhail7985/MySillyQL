<h2> 
  <a href="https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/">
    1378. Replace Employee ID With The Unique Identifier
  </a>
</h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
Table: <code>Employees</code><br>
+---------------+---------+<br>
| Column Name   | Type    |<br>
+---------------+---------+<br>
| id            | int     |<br>
| name          | varchar |<br>
+---------------+---------+<br>
<code>id</code> is the primary key (column with unique values) for this table.<br>
Each row of this table contains the <code>id</code> and the <code>name</code> of an employee in a company.
</p>

<p>
Table: <code>EmployeeUNI</code><br>
+---------------+---------+<br>
| Column Name   | Type    |<br>
+---------------+---------+<br>
| id            | int     |<br>
| unique_id     | int     |<br>
+---------------+---------+<br>
(<code>id</code>, <code>unique_id</code>) is the primary key (combination of columns with unique values) for this table.<br>
Each row of this table contains the <code>id</code> and the corresponding <code>unique_id</code> of an employee in the company.
</p>

<p>
Write a solution to show the <code>unique_id</code> of each user.  
If a user does not have a unique ID, show <code>null</code> instead.<br>
Return the result table in any order.
</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> 
Employees table:
+----+----------+
| id | name     |
+----+----------+
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |
+----+----------+

EmployeeUNI table:
+----+-----------+
| id | unique_id |
+----+-----------+
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |
+----+-----------+

<strong>Output:</strong>
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+

<strong>Explanation:</strong>
Alice and Bob do not have a unique ID, so we show <code>null</code> instead.  
The unique ID of Meir is 2.  
The unique ID of Winston is 3.  
The unique ID of Jonathan is 1.
</pre>
