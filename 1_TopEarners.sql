/*
We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers.

Order of precedence matters here. 

FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
LIMIT

Directly selecting max(salary * months) would not work as it would look for max values within groups that it has made.
Hence, we need another clause which will be executed before GROUP BY which selects the right subset of data. It them performs COUNT within that group.
*/

SELECT   salary * months, COUNT(salary * months)
  FROM   Employee
 WHERE   (salary * months) = ( SELECT MAX(salary * months)
                                 FROM Employee)
GROUP BY salary * months;
