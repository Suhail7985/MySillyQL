<h2>
  <a href="https://leetcode.com/problems/students-and-examinations/description/">
    1280. Students and Examinations
  </a>
</h2>

<img src="https://img.shields.io/badge/Difficulty-Easy-brightgreen" alt="Difficulty: Easy" />
<hr>

<h3>Description</h3>

<p>
Table: <code>Students</code>
</p>

<pre>
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| student_id    | int     |
| student_name  | varchar |
+---------------+---------+
</pre>

<p>
<code>student_id</code> is the primary key (column with unique values) for this table.
</p>

<p>
Each row of this table contains the ID and the name of one student in the school.
</p>

<br>

<p>
Table: <code>Subjects</code>
</p>

<pre>
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+
</pre>

<p>
<code>subject_name</code> is the primary key (column with unique values) for this table.
</p>

<p>
Each row of this table contains the name of one subject in the school.
</p>

<br>

<p>
Table: <code>Examinations</code>
</p>

<pre>
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+
</pre>

<p>
There is no primary key for this table. It may contain duplicates.
</p>

<p>
Each row of this table indicates that a student with ID <code>student_id</code>
attended the exam of <code>subject_name</code>.
</p>

<p>
Each student from the Students table takes every course from the Subjects table.
</p>

<h3>Task</h3>

<p>
Write a solution to find the number of times each student attended each exam.
</p>

<p>
Return the result table ordered by:
</p>

<ul>
  <li><code>student_id</code></li>
  <li><code>subject_name</code></li>
</ul>

<p>
The result format is shown in the following example.
</p>

<h3>Example 1:</h3>

<pre>
<strong>Input:</strong>

Students table:

+------------+--------------+
| student_id | student_name |
+------------+--------------+
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |
+------------+--------------+

Subjects table:

+--------------+
| subject_name |
+--------------+
| Math         |
| Physics      |
| Programming  |
+--------------+

Examinations table:

+------------+--------------+
| student_id | subject_name |
+------------+--------------+
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |
+------------+--------------+

<strong>Output:</strong>

+------------+--------------+--------------+----------------+
| student_id | student_name | subject_name | attended_exams |
+------------+--------------+--------------+----------------+
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |
+------------+--------------+--------------+----------------+

<strong>Explanation:</strong>

Alice attended the Math exam 3 times,
the Physics exam 2 times,
and the Programming exam 1 time.

Bob attended the Math exam 1 time,
the Programming exam 1 time,
and did not attend the Physics exam.

Alex did not attend any exams.

John attended the Math exam 1 time,
the Physics exam 1 time,
and the Programming exam 1 time.
</pre>