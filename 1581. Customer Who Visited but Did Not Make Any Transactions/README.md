<h2>
  <a href="https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/">
    1581. Customer Who Visited but Did Not Make Any Transactions
  </a>
</h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
  Table: <code>Visits</code><br>
  +-------------+-------------+<br>
  | Column Name | Type        |<br>
  +-------------+-------------+<br>
  | visit_id    | int         |<br>
  | customer_id | int         |<br>
  +-------------+-------------+<br>
  <code>visit_id</code> is the column with unique values for this table.<br>
  This table contains information about the customers who visited the mall.
</p>

<p>
  Table: <code>Transactions</code><br>
  +----------------+-------------+<br>
  | Column Name    | Type        |<br>
  +----------------+-------------+<br>
  | transaction_id | int         |<br>
  | visit_id       | int         |<br>
  | amount         | int         |<br>
  +----------------+-------------+<br>
  <code>transaction_id</code> is the column with unique values for this table.<br>
  This table contains information about the transactions made during each visit.
</p>

<p>
  Write a solution to find the IDs of the users who visited without making any transactions
  and the number of times they made such visits.<br><br>
  Return the result table sorted in any order.
</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> 
Visits table:
+----------+-------------+
| visit_id | customer_id |
+----------+-------------+
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |
+----------+-------------+

Transactions table:
+----------------+----------+--------+
| transaction_id | visit_id | amount |
+----------------+----------+--------+
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |
+----------------+----------+--------+

<strong>Output:</strong>
+-------------+----------------+
| customer_id | count_no_trans |
+-------------+----------------+
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |
+-------------+----------------+

<strong>Explanation:</strong>
Customer with id = 23 visited once and made one transaction during visit_id = 12.<br>
Customer with id = 9 visited once and made one transaction during visit_id = 13.<br>
Customer with id = 30 visited once and made no transactions.<br>
Customer with id = 54 visited three times — during 2 visits they made no transactions, and once they made 3 transactions.<br>
Customer with id = 96 visited once and made no transactions.<br><br>
Therefore, users 30, 54, and 96 are included with their respective counts of visits without transactions.
</pre>
