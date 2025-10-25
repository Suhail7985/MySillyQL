<h2>
  <a href="https://leetcode.com/problems/article-views-i/description/">
    1148. Article Views I
  </a>
</h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
Table: <code>Views</code><br>
+---------------+---------+<br>
| Column Name   | Type    |<br>
+---------------+---------+<br>
| article_id    | int     |<br>
| author_id     | int     |<br>
| viewer_id     | int     |<br>
| view_date     | date    |<br>
+---------------+---------+<br>
There is no primary key (column with unique values) for this table; the table may have duplicate rows. Each row of this table indicates that some <code>viewer</code> viewed an article (written by some <code>author</code>) on some date.
<br><br>
Note: Equal <code>author_id</code> and <code>viewer_id</code> indicate the same person.
</p>

<p>
Write a solution to find all the authors that viewed at least one of their own articles.<br>
Return the result table sorted by <code>id</code> in ascending order.
</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> 
Views table:
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+

<strong>Output:</strong>
+------+
| id   |
+------+
| 4    |
| 7    |
+------+
</pre>
