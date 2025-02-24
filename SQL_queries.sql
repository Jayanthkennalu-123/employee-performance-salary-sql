-- Create database
CREATE DATABASE IF NOT EXISTS Sales;


Step 3: Modifying and Updating Data

  1)Update Employee Salary
Let’s say you want to increase the salary of employee Rohith U:

*** UPDATE Salaries**
SET salary_amount = 150000
WHERE employee_id = 3 AND salary_date = '2025-01-01';

        +-----------+--------------+--------------+-------------+-------+
        | salary_id | employee_id  | salary_amount| salary_date | bonus |
        +-----------+--------------+--------------+-------------+-------+
        | 1         | 1            | 75000.00     | 2025-01-01  | 5000  |
        | 2         | 2            | 60000.00     | 2025-01-01  | 3000  |
        | 3         | 3            | 150000.00    | 2025-01-01  | 7000  |   <-- Updated salary
        | 4         | 4            | 80000.00     | 2025-01-01  | 4000  |
        | 5         | 5            | 70000.00     | 2025-01-01  | 8000  |
        | 6         | 6            | 90000.00     | 2025-01-01  | 3000  |
        | 7         | 7            | 85000.00     | 2025-01-01  | 2000  |
        | 8         | 8            | 30000.00     | 2025-01-01  | 1000  |
        +-----------+--------------+--------------+-------------+-------+


  2)Update Employee Performance Rating
If you want to update the performance rating for employee Bob Nithin M:

****UPDATE PerformanceReviews***
SET performance_rating = 'Good', review_comments = 'Improvement shown in analysis'
WHERE employee_id = 4 AND review_date = ' 2024-12-20';

        +-----------+--------------+-------------+------------------+-----------------------------------------------------+
        | review_id | employee_id  | review_date | performance_rating | review_comments                                      |
        +-----------+--------------+-------------+-------------------+------------------------------------------------------+
        | 1         | 1            | 2024-12-15  | Excellent         | Exceeded sales targets, great leadership skills.      |
        | 2         | 2            | 2024-12-10  | Good              | Consistently meeting HR targets, good communication. |
        | 3         | 3            | 2024-12-05  | Excellent         | Exceptional skills and innovation in projects.        |
        | 4         | 4            | 2024-12-20  | Good              | Improvement shown in analysis.                       |   <-- Updated performance review
        | 5         | 5            | 2024-12-20  | Average           | Meets expectations but needs improvement in analysis.|
        | 6         | 6            | 2024-12-20  | Good              | Consistently meeting HR targets, good communication. |
        | 7         | 7            | 2024-12-20  | Excellent         | Meets expectations but needs improvement in analysis.|
        | 8         | 8            | 2024-12-20  | Good              | Meets expectations but needs improvement in analysis.|
        +-----------+--------------+-------------+-------------------+------------------------------------------------------+


  3)Update Job Role of Employee
Suppose Anil Kumar has been promoted. Update her job role:

UPDATE Employees
SET job_role = 'Senior Finance Head'
WHERE employee_id = 8;

        +-------------+------------+-----------+----------------------+------------+------------------------+
        | employee_id | first_name | last_name | department_id        | hire_date  | job_role               |
        +-------------+------------+-----------+----------------------+------------+------------------------+
        | 1           | Swetha     | KN        | 1                    | 2018-01-10 | SiteAcquation          |
        | 2           | Bharath    | joy       | 2                    | 2020-05-25 | O&M                    |
        | 3           | Rohith     | U         | 3                    | 2020-05-25 | HR&Manager             |
        | 4           | Nithin     | M         | 4                    | 2019-08-15 | PropertyTax&TowerPermission |
        | 5           | Anuroop    | Shetty    | 5                    | 2017-03-20 | legal                  |
        | 6           | Janardhan  | BR        | 6                    | 2017-03-20 | EB                     |
        | 7           | Sachin     | N         | 7                    | 2017-03-20 | Estate                 |
        | 8           | Anil       | Kumar     | 8                    | 2017-03-20 | Senior Finance Head    |   <-- Updated job role
        +-------------+------------+-----------+----------------------+------------+------------------------+


Step 4: Deleting Data

  1) Delete an Employee’s Salary Record
To delete the salary record of employee Swetha KN:

DELETE FROM Salaries
WHERE employee_id = 1 AND salary_date = ' 2025-01-01';

        +-----------+--------------+--------------+-------------+-------+
        | salary_id | employee_id  | salary_amount| salary_date | bonus |
        +-----------+--------------+--------------+-------------+-------+
        | 2         | 2            | 60000.00     | 2025-01-01  | 3000  |
        | 3         | 3            | 150000.00    | 2025-01-01  | 7000  |
        | 4         | 4            | 80000.00     | 2025-01-01  | 4000  |
        | 5         | 5            | 70000.00     | 2025-01-01  | 8000  |
        | 6         | 6            | 90000.00     | 2025-01-01  | 3000  |
        | 7         | 7            | 85000.00     | 2025-01-01  | 2000  |
        | 8         | 8            | 30000.00     | 2025-01-01  | 1000  |
        +-----------+--------------+--------------+-------------+-------+


  2) Delete an Employee’s Performance Review
To delete the performance review of employee Anuroopa Shetty:

DELETE FROM PerformanceReviews
WHERE employee_id = 5 AND review_date = ' 2024-12-20 ';

        +-----------+--------------+-------------+-------------------+-----------------------------------------------------+
        | review_id | employee_id  | review_date | performance_rating | review_comments                                      |
        +-----------+--------------+-------------+-------------------+------------------------------------------------------+
        | 1         | 1            | 2024-12-15  | Excellent         | Exceeded sales targets, great leadership skills.      |
        | 2         | 2            | 2024-12-10  | Good              | Consistently meeting HR targets, good communication. |
        | 3         | 3            | 2024-12-05  | Excellent         | Exceptional skills and innovation in projects.        |
        | 4         | 4            | 2024-12-20  | Good              | Improvement shown in analysis.                       |
        | 6         | 6            | 2024-12-20  | Good              | Consistently meeting HR targets, good communication. |
        | 7         | 7            | 2024-12-20  | Excellent         | Meets expectations but needs improvement in analysis.|
        | 8         | 8            | 2024-12-20  | Good              | Meets expectations but needs improvement in analysis.|
        +-----------+--------------+-------------+-------------------+------------------------------------------------------+


Delete an Employee (and Cascade Deletions)

DELETE FROM Employees
WHERE employee_id = 2;

        +-------------+------------+-----------+----------------------+------------+------------------------+
        | employee_id | first_name | last_name | department_id        | hire_date  | job_role               |
        +-------------+------------+-----------+----------------------+------------+------------------------+
        | 1           | Swetha     | KN        | 1                    | 2018-01-10 | SiteAcquation          |
        | 3           | Rohith     | U         | 3                    | 2020-05-25 | HR&Manager             |
        | 4           | Nithin     | M         | 4                    | 2019-08-15 | PropertyTax&TowerPermission |
        | 5           | Anuroop    | Shetty    | 5                    | 2017-03-20 | legal                  |
        | 6           | Janardhan  | BR        | 6                    | 2017-03-20 | EB                     |
        | 7           | Sachin     | N         | 7                    | 2017-03-20 | Estate                 |
        | 8           | Anil       | Kumar     | 8                    | 2017-03-20 | Senior Finance Head    |
        +-------------+------------+-----------+----------------------+------------+------------------------+

Step 5: Additional Data Manipulations

  1) Add a New Column
If you need to add a new column (e.g., phone_number for employees):

ALTER TABLE Employees
ADD phone_number VARCHAR(20);

        +-------------+------------+-----------+----------------------+------------+------------------------+--------------+
        | employee_id | first_name | last_name | department_id        | hire_date  | job_role               | phone_number |
        +-------------+------------+-----------+----------------------+------------+------------------------+--------------+
        | 1           | Swetha     | KN        | 1                    | 2018-01-10 | SiteAcquation          | NULL         |
        | 3           | Rohith     | U         | 3                    | 2020-05-25 | HR&Manager             | NULL         |
        | 4           | Nithin     | M         | 4                    | 2019-08-15 | PropertyTax&TowerPermission | NULL         |
        | 5           | Anuroop    | Shetty    | 5                    | 2017-03-20 | legal                  | NULL         |
        | 6           | Janardhan  | BR        | 6                    | 2017-03-20 | EB                     | NULL         |
        | 7           | Sachin     | N         | 7                    | 2017-03-20 | Estate                 | NULL         |
        | 8           | Anil       | Kumar     | 8                    | 2017-03-20 | Senior Finance Head    | NULL         |
        +-------------+------------+-----------+----------------------+------------+------------------------+--------------+


  2) Remove a Column
If you need to remove an unnecessary column:

ALTER TABLE Employees
DROP COLUMN phone_number;


Step 6: Bonus - Complex Data Manipulation
 1) Add New Department and Update Employee’s Department
Let's add a new department (Marketing) and move an employee to that department.

INSERT INTO Departments (department_id, department_name)
VALUES (9, 'Marketing');

        +--------------+----------------------------+
        | department_id | department_name           |
        +--------------+----------------------------+
        | 1            | SiteAcquation              |
        | 2            | O&M                        |
        | 3            | HR&Manager                 |
        | 4            | PropertyTax&TowerPermission|
        | 5            | Marketing                  |
        | 6            | EB                         |
        | 7            | Estate                     |
        | 8            | Finance                    |
        | 9            | Marketing                  |  <-- New department
        +--------------+----------------------------+


-- Update employee's department (e.g., moving John to Marketing)
UPDATE Employees
SET department_id = 5
WHERE employee_id = 1;

        +-------------+------------+-----------+----------------------+------------+------------------------+
        | employee_id | first_name | last_name | department_id        | hire_date  | job_role               |
        +-------------+------------+-----------+----------------------+------------+------------------------+
        | 1           | Swetha     | KN        | 9                    | 2018-01-10 | SiteAcquation          |
        | 3           | Rohith     | U         | 3                    | 2020-05-25 | HR&Manager             |
        | 4           | Nithin     | M         | 4                    | 2019-08-15 | PropertyTax&TowerPermission |
        | 5           | Anuroop    | Shetty    | 5                    | 2017-03-20 | legal                  |
        | 6           | Janardhan  | BR        | 6                    | 2017-03-20 | EB                     |
        | 7           | Sachin     | N         | 7                    | 2017-03-20 | Estate                 |
        | 8           | Anil       | Kumar     | 8                    | 2017-03-20 | Senior Finance Head    |
        +-------------+------------+-----------+----------------------+------------+------------------------+

Create a New Salary Record with a Bonus
Let's give Alice Johnson a new salary record with a bonus:

INSERT INTO Salaries (salary_id, employee_id, salary_amount, salary_date, bonus)
VALUES (5, 3, 100000, '2025-02-01', 8000);

        +-----------+-------------+--------------+------------+--------+
        | salary_id | employee_id | salary_amount| salary_date| bonus  |
        +-----------+-------------+--------------+------------+--------+
        | 1         | 1           | 75000        | 2025-01-01 | 5000   |
        | 2         | 2           | 60000        | 2025-01-01 | 3000   |
        | 3         | 3           | 95000        | 2025-01-01 | 7000   |
        | 4         | 4           | 80000        | 2025-01-01 | 4000   |
        | 5         | 5           | 70000        | 2025-01-01 | 8000   |
        | 6         | 6           | 90000        | 2025-01-01 | 3000   |
        | 7         | 7           | 85000        | 2025-01-01 | 2000   |
        | 8         | 8           | 30000        | 2025-01-01 | 1000   |
        | 9         | 3           | 100000       | 2025-02-01 | 8000   |   <-- New salary for employee_id = 3
        +-----------+-------------+--------------+------------+--------+

Query 1: To select distinct performance ratings from the PerformanceReviews table
    SELECT DISTINCT performance_rating
    FROM PerformanceReviews;
  OutPut: 
        performance_rating
        Excellent
        Good
        Average
        Poor

Query 2: Total Employees in Each Department
This query shows how many employees belong to each department.

SELECT d.department_name, COUNT(e.employee_id) AS total_employees
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY e.total_employees;


Query 3. Average Salary by Department
This query calculates the average salary in each department.

SELECT d.department_name, AVG(s.salary_amount) AS average_salary
FROM Salaries s
JOIN Employees e ON s.employee_id = e.employee_id
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;


3. Employees with Highest Salary
This query identifies the employee(s) with the highest salary.

SELECT e.first_name, e.last_name, s.salary_amount
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id
WHERE s.salary_amount = (SELECT MAX(salary_amount) FROM Salaries);


4. Employee Performance Trends Over Time
This query analyzes the performance of each employee over time by looking at their performance reviews.

SELECT e.first_name, e.last_name, pr.review_date, pr.performance_rating
FROM PerformanceReviews pr
JOIN Employees e ON pr.employee_id = e.employee_id
ORDER BY e.employee_id, pr.review_date;


5. Employees with the Lowest Salary in Each Department
This query finds employees who have the lowest salary in each department.

SELECT e.first_name, e.last_name, s.salary_amount, d.department_name
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id
JOIN Departments d ON e.department_id = d.department_id
WHERE s.salary_amount = (
    SELECT MIN(salary_amount)
    FROM Salaries s
    JOIN Employees e ON s.employee_id = e.employee_id
    WHERE e.department_id = d.department_id
);


6. Employees Who Have Not Received a Performance Review
This query identifies employees who have not received a performance review.

SELECT e.first_name, e.last_name
FROM Employees e
LEFT JOIN PerformanceReviews pr ON e.employee_id = pr.employee_id
WHERE pr.review_id IS NULL;


7. Employees with a Specific Performance Rating (e.g., 'Excellent')
This query shows employees who have received a specific performance rating, such as 'Excellent'.

SELECT e.first_name, e.last_name, pr.performance_rating, pr.review_date
FROM PerformanceReviews pr
JOIN Employees e ON pr.employee_id = e.employee_id
WHERE pr.performance_rating = 'Excellent';



8. Employees Salary and Bonus Growth Over Time
This query compares the growth of salary and bonus for each employee.

SELECT e.first_name, e.last_name, s.salary_amount, s.bonus, s.salary_date
FROM Salaries s
JOIN Employees e ON s.employee_id = e.employee_id
ORDER BY e.employee_id, s.salary_date;



9. Employee Salary Increase Over Time
This query compares salary increases for each employee over time.

SELECT e.first_name, e.last_name, s.salary_amount, s.salary_date
FROM Salaries s
JOIN Employees e ON s.employee_id = e.employee_id
ORDER BY e.employee_id, s.salary_date;


10. Departments with No Employees
This query lists departments that currently do not have any employees.

SELECT d.department_name
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;



11. Employees with 'Good' or 'Excellent' Performance Rating
This query lists employees who have received a 'Good' or 'Excellent' performance rating.

SELECT e.first_name, e.last_name, pr.performance_rating
FROM PerformanceReviews pr
JOIN Employees e ON pr.employee_id = e.employee_id
WHERE pr.performance_rating IN ('Good', 'Excellent');

12. Employees with Performance Reviews After a Specific Date
This query shows employees who have received performance reviews after a particular date.


SELECT e.first_name, e.last_name, pr.review_date, pr.performance_rating
FROM PerformanceReviews pr
JOIN Employees e ON pr.employee_id = e.employee_id
WHERE pr.review_date > '2024-01-01';

13. Employee Salary and Bonus Comparison for the Year
This query compares employee salary and bonus for a particular year.


SELECT e.first_name, e.last_name, s.salary_amount, s.bonus, s.salary_date
FROM Salaries s
JOIN Employees e ON s.employee_id = e.employee_id
WHERE YEAR(s.salary_date) = 2025;

14. This lists the employees in department with department_id = 1

SELECT first_name, last_name
FROM Employees
WHERE department_id = 1;

15.This shows all employees who work as 'HR&Manager'.

SELECT first_name, last_name
FROM Employees
WHERE job_role = 'HR&Manager';


