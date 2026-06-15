-- LEETCODE: SQL 
-- EXERCISE: 184
SELECT DISTINCT
Department.name AS "Department",
Employee.name AS "Employee",
Employee.salary AS "Salary"
FROM Department
LEFT JOIN Employee ON Department.id = Employee.departmentId
WHERE (Employee.departmentId, Employee.salary) IN (
SELECT departmentId, MAX(salary)
FROM Employee
GROUP BY departmentId
)