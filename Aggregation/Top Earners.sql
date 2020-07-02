/* The Employee table containing employee data for a company is described as follows:

+-------------+----------+
| Column      | Type     |
+-------------+----------+
| employee_id | int(11)  |
| name        | char(35) |
| months      | char(35) |
| salary      | int(11)  |
+-------------+----------+

We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers. */

SELECT MONTHS*SALARY AS earnings, COUNT(*) FROM employee
GROUP BY earnings 
ORDER BY earnings DESC
LIMIT 1;
