<h2>
  <a href="https://leetcode.com/problems/product-sales-analysis-i/description/">
    1068. Product Sales Analysis I
  </a>
</h2>
<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
  You are given two tables: <code>Sales</code> and <code>Product</code>.
  Write a SQL query to report the <strong>product_name</strong>, <strong>year</strong>, and <strong>price</strong> for each <strong>sale_id</strong> in the <code>Sales</code> table.
  <br><br>
  Return the resulting table in any order.
</p>

<h3>Table: Sales</h3>
<pre>
+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+
(sale_id, year) is the primary key of this table.
product_id is a foreign key (reference column) to Product table.
Each row of this table shows a sale on the product_id in a certain year.
Note that the price is per unit.
</pre>

<h3>Table: Product</h3>
<pre>
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+
product_id is the primary key of this table.
Each row of this table indicates the product name of each product.
</pre>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> 

Sales table:
+---------+------------+------+----------+-------+
| sale_id | product_id | year | quantity | price |
+---------+------------+------+----------+-------+
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |
+---------+------------+------+----------+-------+

Product table:
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |
+------------+--------------+

<strong>Output:</strong>
+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+

<strong>Explanation:</strong>
From sale_id = 1, we can conclude that Nokia was sold for 5000 in 2008.
From sale_id = 2, we can conclude that Nokia was sold for 5000 in 2009.
From sale_id = 7, we can conclude that Apple was sold for 9000 in 2011.
</pre>

<h3>SQL Query:</h3>
<pre>
SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id;
</pre>
