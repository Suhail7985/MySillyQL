-- Write your SQL query statement below
Select EmployeeUNI.unique_id , Employees.name from Employees
left join EmployeeUNI 
on Employees.id = EmployeeUNI.id
