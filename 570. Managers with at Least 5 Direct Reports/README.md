<h2>
  <a href="https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/">
    570. Managers with at Least 5 Direct Reports
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Medium-orange" alt="Difficulty: Medium" />
<hr>

<h3>Description</h3>

<p>
Table: <code>Employee</code>
</p>

<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
</pre>

<p>
<code>id</code> is the primary key (column with unique values) for this table.
</p>

<p>
Each row of this table indicates the name of an employee,
their department, and the id of their manager.
</p>

<p>
If <code>managerId</code> is <code>null</code>,
then the employee does not have a manager.
</p>

<p>
No employee will be the manager of themself.
</p>

<h3>Task</h3>

<p>
Write a solution to find managers with at least five direct reports.
</p>

<p>
Return the result table in any order.
</p>

<p>
The result format is shown in the following example.
</p>

<h3>Example 1:</h3>

<pre>
<strong>Input:</strong>

Employee table:

+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+

<strong>Output:</strong>

+------+
| name |
+------+
| John |
+------+

<strong>Explanation:</strong>

John is the manager of:
Dan,
James,
Amy,
Anne,
and Ron.

So, John has 5 direct reports.
</pre>