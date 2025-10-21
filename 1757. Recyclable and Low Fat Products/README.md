<h2><a href="https://leetcode.com/problems/recyclable-and-low-fat-products/description/">1757. Recyclable and Low Fat Products</a></h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>Table: <code>Products</code></p>

<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
</pre>

<p><code>product_id</code> is the primary key (column with unique values) for this table.<br>
<code>low_fats</code> is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.<br>
<code>recyclable</code> is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.</p>

<p>Write a solution to find the ids of products that are both low fat and recyclable.</p>
<p>Return the result table in any order.</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> 
Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+

<strong>Output:</strong> 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+

<strong>Explanation:</strong> Only products 1 and 3 are both low fat and recyclable.
</pre>

<h3>SQL Schema:</h3>
<pre>
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
</pre>
