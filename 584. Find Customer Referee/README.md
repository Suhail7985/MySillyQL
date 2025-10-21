<h2><a href="https://leetcode.com/problems/find-customer-referee/description/">584. Find Customer Referee</a></h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
Table: <strong>Customer</strong>
</p>
<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
</pre>
<p>
In SQL, <code>id</code> is the primary key column for this table. Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
</p>
<p>
Find the names of the customers that are either:
</p>
<ul>
  <li>referred by any customer with <code>id != 2</code>.</li>
  <li>not referred by any customer.</li>
</ul>
<p>Return the result table in any order.</p>
<p>The result format is in the following example.</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+

<strong>Output:</strong>
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+
</pre>
