<h2><a href="https://leetcode.com/problems/big-countries/description/">
595. Big Countries
</a></h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
Table: <code>World</code><br>
+-------------+---------+<br>
| Column Name | Type    |<br>
+-------------+---------+<br>
| name        | varchar |<br>
| continent   | varchar |<br>
| area        | int     |<br>
| population  | int     |<br>
| gdp         | bigint  |<br>
+-------------+---------+<br>
<code>name</code> is the primary key (column with unique values) for this table. Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.
</p>

<p>
A country is considered <strong>big</strong> if:
</p>
<ul>
  <li>It has an area of at least <code>three million</code> (i.e., <code>3000000</code> km<sup>2</sup>), or</li>
  <li>It has a population of at least <code>twenty-five million</code> (i.e., <code>25000000</code>).</li>
</ul>

<p>
Write a solution to find the <code>name</code>, <code>population</code>, and <code>area</code> of the big countries.<br>
Return the result table in any order.
</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> 
World table:
+-------------+-----------+---------+------------+--------------+
| name        | continent | area    | population | gdp          |
+-------------+-----------+---------+------------+--------------+
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
+-------------+-----------+---------+------------+--------------+

<strong>Output:</strong>
+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+
</pre>
