<h2>
  <a href="https://leetcode.com/problems/rising-temperature/description/">
    197. Rising Temperature
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
Table: <code>Weather</code>
</p>

<pre>
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
</pre>

<p>
<code>id</code> is the column with unique values for this table.
There are no different rows with the same <code>recordDate</code>.
This table contains information about the temperature on a certain day.
</p>

<p>
Write a solution to find all dates' <code>id</code> with higher temperatures compared to its previous dates (yesterday).
</p>

<p>
Return the result table in any order.
</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+

<strong>Output:</strong>
+----+
| id |
+----+
| 2  |
| 4  |
+----+

<strong>Explanation:</strong>
On 2015-01-02, the temperature was higher than the previous day (10 → 25).
On 2015-01-04, the temperature was higher than the previous day (20 → 30).
</pre>