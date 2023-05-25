-- Provide a query showing only the Employees who are "Sales Agents"

SELECT * FROM Employee
WHERE Title LIKE '%sales%agent%' OR Title LIKE '%agent%sales%';
