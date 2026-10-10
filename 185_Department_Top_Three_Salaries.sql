select d.name as Department , e.name as Employee,e.salary from Employee e
join Department d on d.id = e.departmentId where 3 > (
SELECT COUNT(DISTINCT e2.salary)
FROM Employee e2
WHERE e2.departmentId = e.departmentId
AND e2.salary > e.salary
);
