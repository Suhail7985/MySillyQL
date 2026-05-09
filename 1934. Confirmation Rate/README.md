<h2>
  <a href="https://leetcode.com/problems/confirmation-rate/description/">
    1934. Confirmation Rate
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Medium-orange" alt="Difficulty: Medium" />
<hr>

<h3>Description</h3>

<p>
Table: <code>Signups</code>
</p>

<pre>
+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
+----------------+----------+
</pre>

<p>
<code>user_id</code> is the column with unique values for this table.
</p>

<p>
Each row contains information about the signup time
for the user with ID <code>user_id</code>.
</p>

<br>

<p>
Table: <code>Confirmations</code>
</p>

<pre>
+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
| action         | ENUM     |
+----------------+----------+
</pre>

<p>
<code>(user_id, time_stamp)</code> is the primary key
(combination of columns with unique values) for this table.
</p>

<p>
<code>user_id</code> is a foreign key referencing the Signups table.
</p>

<p>
<code>action</code> is an ENUM of type:
<code>('confirmed', 'timeout')</code>
</p>

<p>
Each row indicates that the user with ID <code>user_id</code>
requested a confirmation message at <code>time_stamp</code>.
</p>

<p>
The confirmation message was either:
</p>

<ul>
  <li><code>'confirmed'</code></li>
  <li><code>'timeout'</code></li>
</ul>

<h3>Task</h3>

<p>
The confirmation rate of a user is:
</p>

<pre>
(number of confirmed messages)
/
(total number of confirmation requests)
</pre>

<p>
A user that did not request any confirmation messages
has a confirmation rate of <code>0</code>.
</p>

<p>
Round the confirmation rate to two decimal places.
</p>

<p>
Write a solution to find the confirmation rate of each user.
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

Signups table:

+---------+---------------------+
| user_id | time_stamp          |
+---------+---------------------+
| 3       | 2020-03-21 10:16:13 |
| 7       | 2020-01-04 13:57:59 |
| 2       | 2020-07-29 23:09:44 |
| 6       | 2020-12-09 10:39:37 |
+---------+---------------------+

Confirmations table:

+---------+---------------------+-----------+
| user_id | time_stamp          | action    |
+---------+---------------------+-----------+
| 3       | 2021-01-06 03:30:46 | timeout   |
| 3       | 2021-07-14 14:00:00 | timeout   |
| 7       | 2021-06-12 11:57:29 | confirmed |
| 7       | 2021-06-13 12:58:28 | confirmed |
| 7       | 2021-06-14 13:59:27 | confirmed |
| 2       | 2021-01-22 00:00:00 | confirmed |
| 2       | 2021-02-28 23:59:59 | timeout   |
+---------+---------------------+-----------+

<strong>Output:</strong>

+---------+-------------------+
| user_id | confirmation_rate |
+---------+-------------------+
| 6       | 0.00              |
| 3       | 0.00              |
| 7       | 1.00              |
| 2       | 0.50              |
+---------+-------------------+

<strong>Explanation:</strong>

User 6 did not request any confirmation messages.
So, the confirmation rate is 0.

User 3 made 2 requests and both timed out.
So, the confirmation rate is 0.

User 7 made 3 requests and all were confirmed.
So, the confirmation rate is 1.

User 2 made 2 requests:
one was confirmed and one timed out.

So, the confirmation rate is:

1 / 2 = 0.50
</pre>