<h2>
  <a href="https://leetcode.com/problems/not-boring-movies/description/">
    620. Not Boring Movies
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>

<p>
Table: <code>Cinema</code>
</p>

<pre>
+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| id             | int      |
| movie          | varchar  |
| description    | varchar  |
| rating         | float    |
+----------------+----------+
</pre>

<p>
<code>id</code> is the primary key (column with unique values) for this table.
</p>

<p>
Each row contains information about:
</p>

<ul>
  <li>Movie name</li>
  <li>Movie description</li>
  <li>Movie rating</li>
</ul>

<p>
<code>rating</code> is a float with 2 decimal places
in the range <code>[0, 10]</code>.
</p>

<h3>Task</h3>

<p>
Write a solution to report the movies:
</p>

<ul>
  <li>With an odd-numbered ID</li>
  <li>And a description that is not <code>"boring"</code></li>
</ul>

<p>
Return the result table ordered by:
</p>

<ul>
  <li><code>rating</code> in descending order</li>
</ul>

<p>
The result format is shown in the following example.
</p>

<h3>Example 1:</h3>

<pre>
<strong>Input:</strong>

Cinema table:

+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |
+----+------------+-------------+--------+

<strong>Output:</strong>

+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |
+----+------------+-------------+--------+

<strong>Explanation:</strong>

The movies with odd-numbered IDs are:
1, 3, and 5.

The movie with ID = 3 has description:
<code>"boring"</code>

So, it is not included in the result.

The remaining movies are sorted
by rating in descending order.
</pre>