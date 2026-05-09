<h2>
  <a href="https://leetcode.com/problems/average-time-of-process-per-machine/description/">
    1661. Average Time of Process per Machine
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>
<p>
Table: <code>Activity</code>
</p>

<pre>
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |
+----------------+---------+
</pre>

<p>
<code>(machine_id, process_id, activity_type)</code> is the primary key
(combination of columns with unique values) of this table.
</p>

<p>
<code>machine_id</code> is the ID of a machine.<br>
<code>process_id</code> is the ID of a process running on the machine.<br>
<code>activity_type</code> is an ENUM of type <code>('start', 'end')</code>.<br>
<code>timestamp</code> is a float representing the current time in seconds.
</p>

<p>
The <code>'start'</code> timestamp will always be before the <code>'end'</code> timestamp
for every <code>(machine_id, process_id)</code> pair.
</p>

<p>
Each process has exactly one start and one end timestamp.
</p>

<p>
Write a solution to find the average time each machine takes to complete a process.
</p>

<p>
The time to complete a process is:
</p>

<pre>
end timestamp - start timestamp
</pre>

<p>
The average time is calculated as:
</p>

<pre>
(total processing time of all processes on the machine)
/
(number of processes on that machine)
</pre>

<p>
Return the result table with:
</p>

<ul>
  <li><code>machine_id</code></li>
  <li><code>processing_time</code> rounded to 3 decimal places</li>
</ul>

<p>
Return the result table in any order.
</p>

<h3>Example 1:</h3>
<pre>
<strong>Input:</strong> Activity table:

+------------+------------+---------------+-----------+
| machine_id | process_id | activity_type | timestamp |
+------------+------------+---------------+-----------+
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |
+------------+------------+---------------+-----------+

<strong>Output:</strong>

+------------+-----------------+
| machine_id | processing_time |
+------------+-----------------+
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |
+------------+-----------------+

<strong>Explanation:</strong>

Machine 0:
((1.520 - 0.712) + (4.120 - 3.140)) / 2 = 0.894

Machine 1:
((1.550 - 0.550) + (1.420 - 0.430)) / 2 = 0.995

Machine 2:
((4.512 - 4.100) + (5.000 - 2.500)) / 2 = 1.456
</pre>