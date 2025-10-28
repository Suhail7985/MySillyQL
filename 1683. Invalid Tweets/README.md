<h2> 
  <a href="https://leetcode.com/problems/invalid-tweets/description/">
    1683. Invalid Tweets
  </a>
</h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
Table: <code>Tweets</code><br>
+----------------+---------+<br>
| Column Name    | Type    |<br>
+----------------+---------+<br>
| tweet_id       | int     |<br>
| content        | varchar |<br>
+----------------+---------+<br>
<code>tweet_id</code> is the primary key (column with unique values) for this table.<br>
<code>content</code> consists of alphanumeric characters, '!', or ' ' and no other special characters.<br>
This table contains all the tweets in a social media app.
</p>

<p>
Write a solution to find the IDs of the invalid tweets.<br>
A tweet is <b>invalid</b> if the number of characters used in the content of the tweet is <b>strictly greater than 15</b>.<br>
Return the result table in any order.
</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> 
Tweets table:
+----------+-----------------------------------+
| tweet_id | content                           |
+----------+-----------------------------------+
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |
+----------+-----------------------------------+

<strong>Output:</strong>
+----------+
| tweet_id |
+----------+
| 2        |
+----------+

<strong>Explanation:</strong>
Tweet 1 has length = 11. It is a valid tweet.
Tweet 2 has length = 33. It is an invalid tweet.
</pre>
