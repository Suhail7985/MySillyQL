<h2>
  <a href="https://leetcode.com/problems/employee-bonus/description/">
    577. Employee Bonus
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>

<p>
Table: <code>Employee</code>
</p>

<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+
</pre>

<p>
<code>empId</code> is the column with unique values for this table.
Each row contains the employee name, salary, and the id of their manager.
</p>

<p>
Table: <code>Bonus</code>
</p>

<pre>
+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+
</pre>

<p>
<code>empId</code> is the column with unique values for this table.
<code>empId</code> is a foreign key referencing <code>Employee.empId</code>.
Each row contains the bonus amount of an employee.
</p>

<p>
Write a solution to report the <code>name</code> and <code>bonus</code>
of each employee who:
</p>

<ul>
  <li>Has a bonus less than <code>1000</code>, or</li>
  <li>Did not receive any bonus.</li>
</ul>

<p>
Return the result table in any order.
</p>

<h3>Example 1:</h3>

<pre>
<strong>Input:</strong>

Employee table:
+-------+--------+------------+--------+
| empId | name   | supervisor | salary |
+-------+--------+------------+--------+
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |
+-------+--------+------------+--------+

Bonus table:
+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+

<strong>Output:</strong>

+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+
</pre>