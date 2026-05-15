<h2>
  <a href="https://leetcode.com/problems/average-selling-price/description/">
    1251. Average Selling Price
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>

<p>
Table: <code>Prices</code>
</p>

<pre>
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| start_date    | date    |
| end_date      | date    |
| price         | int     |
+---------------+---------+
</pre>

<p>
<code>(product_id, start_date, end_date)</code>
is the primary key
(combination of columns with unique values) for this table.
</p>

<p>
Each row indicates the price of a product
during a specific time period
from <code>start_date</code> to <code>end_date</code>.
</p>

<p>
For each <code>product_id</code>,
there are no overlapping periods.
</p>

<br>

<p>
Table: <code>UnitsSold</code>
</p>

<pre>
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| purchase_date | date    |
| units         | int     |
+---------------+---------+
</pre>

<p>
This table may contain duplicate rows.
</p>

<p>
Each row indicates:
</p>

<ul>
  <li>Product sold</li>
  <li>Purchase date</li>
  <li>Number of units sold</li>
</ul>

<h3>Task</h3>

<p>
Write a solution to find the average selling price for each product.
</p>

<p>
The average selling price is calculated as:
</p>

<pre>
Total Price of Product
/
Total Units Sold
</pre>

<p>
Round <code>average_price</code> to 2 decimal places.
</p>

<p>
If a product does not have any sold units,
its average selling price is assumed to be <code>0</code>.
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

Prices table:

+------------+------------+------------+--------+
| product_id | start_date | end_date   | price  |
+------------+------------+------------+--------+
| 1          | 2019-02-17 | 2019-02-28 | 5      |
| 1          | 2019-03-01 | 2019-03-22 | 20     |
| 2          | 2019-02-01 | 2019-02-20 | 15     |
| 2          | 2019-02-21 | 2019-03-31 | 30     |
+------------+------------+------------+--------+

UnitsSold table:

+------------+---------------+-------+
| product_id | purchase_date | units |
+------------+---------------+-------+
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |
+------------+---------------+-------+

<strong>Output:</strong>

+------------+---------------+
| product_id | average_price |
+------------+---------------+
| 1          | 6.96          |
| 2          | 16.96         |
+------------+---------------+

<strong>Explanation:</strong>

Average selling price formula:

(Total Price of Product)
/
(Total Units Sold)

For product 1:

((100 × 5) + (15 × 20)) / 115
= 6.96

For product 2:

((200 × 15) + (30 × 30)) / 230
= 16.96
</pre>