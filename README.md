#  Employee Performace and Salary Data Analysis

## About

The Employee Performance and Salary Analysis project aims to explore and analyze the relationship between employee performance and compensation. This project involves designing a database that stores key information about employees, their salaries, and performance reviews. The goal is to better understand how various factors—such as job roles, departments, tenure, and performance—affect salary distribution, performance trends, and other key metrics.

This project is crucial for businesses that want to make data-driven decisions regarding compensation, performance management, and employee retention strategies.

Key Features:
✔️ Data Cleaning & Transformation – Handling missing values, normalizing salary formats, and ensuring data consistency.
✔️ Exploratory Data Analysis (EDA) – Generating key statistics and insights on salary trends, performance distributions, and departmental pay structures.
✔️ Performance vs. Salary Correlation – Examining relationships between employee performance ratings and salary growth.
✔️ Promotion & Salary Increase Analysis – Identifying patterns in promotions and their impact on salaries.
✔️ Department-Wise Salary Breakdown – Comparing salaries across different departments and roles.
✔️ SQL Queries & Stored Procedures – Implementing complex queries, joins, and aggregate functions for in-depth analysis.

### Analysis List

Let's break down the Employee Performance and Salary Analysis project step by step.

1. Database Structure
    We will create the following tables:

    Employees: Stores employee details.
    Departments: Stores department information.
    Salaries: Stores employee salary data.
    PerformanceReviews: Stores performance reviews for employees.

```sql
-- Create database
CREATE DATABASE IF NOT EXISTS EmployeePerformace;

-- Create table
2. SQL Table Structures
Table 1: Employees
    This table stores basic information about employees.

CREATE TABLE Employees (
    employee_id  INT PRIMARY KEY NOTNULL,
    first_name VARCHAR(100) NOTNULL,
    last_name VARCHAR(100) NOTNULL,
    department_id INT NOTNULL,
    hire_date DATE NOTNULL,
    job_role VARCHAR(100) NOTNULL,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
        employee_id: Unique ID for each employee.
        first_name: Employee's first name.
        last_name: Employee's last name.
        department_id: Foreign key referencing Departments table.
        hire_date: Date when the employee was hired.
        job_role: Job title or position of the employee.

Table 2: Departments
    This table stores information about departments within the organization.

    CREATE TABLE Departments (
        department_id INT PRIMARY KEY,
        department_name VARCHAR(100)
    );

        department_id: Unique ID for each department.
        department_name: Name of the department (e.g., Sales, HR, IT).

Table 3: Salaries
    This table stores salary information for employees.

    CREATE TABLE Salaries (
        salary_id INT PRIMARY KEY,
        employee_id INT,
        salary_amount DECIMAL(10, 2),
        salary_date DATE,
        bonus DECIMAL(10, 2),
        FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
    );

Table 4: PerformanceReviews
    This table stores performance review data for employees.

    CREATE TABLE PerformanceReviews (
        review_id INT PRIMARY KEY,
        employee_id INT,
        review_date DATE,
        performance_rating VARCHAR(10),  -- "Excellent", "Good", "Average", "Poor"
        review_comments TEXT,
        FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
    );
        review_id: Unique ID for each performance review.
        employee_id: Foreign key referencing Employees table.
        review_date: Date of the performance review.
        performance_rating: The rating of the employee's performance.

3. Example Data Insertion
    Let’s insert some sample data to work with:

-------Inserting Data into Departments Table--------

    INSERT INTO Departments (department_id, department_name)
    VALUES 
    (1, 'SiteAcquation'),
    (2, 'O&M'),
    (3, 'HR&Manager'),
    (4, 'PropertyTax&TowerPermission'),
    (5, 'legal'),
    (6, 'EB'),
    (7, 'Estate'),
    (8, 'Finance');

        +---------------------+----------------------------+
        | department_id       | department_name            |
        +---------------------+----------------------------+
        | 1                   | SiteAcquation              |
        | 2                   | O&M                        |
        | 3                   | HR&Manager                 |
        | 4                   | PropertyTax&TowerPermission|
        | 5                   | legal                      |
        | 6                   | EB                         |
        | 7                   | Estate                     |
        | 8                   | Finance                    |
        +---------------------+----------------------------+

-------Inserting Data into Employees Table ---------------

    INSERT INTO Employees (employee_id, first_name, last_name, department_id, hire_date, job_role)
    VALUES
    (1, 'Swetha', 'KN', 1, '2018-01-10', 'SiteAcquation'),
    (2, 'Bharath', 'joy', 2, '2020-05-25', 'O&M'),
    (3, 'Rohith', 'U', 3, '2020-05-25', 'HR&Manager'),
    (4, 'Nithin', 'M', 4, '2019-08-15', 'PropertyTax&TowerPermission'),
    (5, 'Anuroop', 'Shetty', 5, '2017-03-20', 'legal');
    (6, 'Janardhan', 'BR', 6, '2017-03-20', 'EB');
    (7, 'Sachin', 'N', 7, '2017-03-20', 'Estate');
    (8, 'Anil', 'Kumar', 8, '2017-03-20', 'Finance');

        +--------------+------------+-----------+--------------+------------+----------------------------+
        | employee_id  |first_name | last_name | department_id | hire_date  | job_role                   |
        +--------------+------------+-----------+--------------+------------+----------------------------+
        | 1            | Swetha     | KN        | 1            | 2018-01-10 | SiteAcquation              |
        | 2            | Bharath    | joy       | 2            | 2020-05-25 | O&M                        |
        | 3            | Rohith     | U         | 3            | 2020-05-25 | HR&Manager                 |
        | 4            | Nithin     | M         | 4            | 2019-08-15 | PropertyTax&TowerPermission|
        | 5            | Anuroop    | Shetty    | 5            | 2017-03-20 | legal                      |
        | 6            | Janardhan  | BR        | 6            | 2017-03-20 | EB                         |
        | 7            | Sachin     | N         | 7            | 2017-03-20 | Estate                     |
        | 8            | Anil       | Kumar     | 8            | 2017-03-20 | Finance                    |
        +--------------+------------+-----------+--------------+------------+----------------------------+


-------Inserting Data into Salaries Table----------

    INSERT INTO Salaries (salary_id, employee_id, salary_amount, salary_date, bonus)
    VALUES
    (1, 1, 75000, '2025-01-01', 5000),
    (2, 2, 60000, '2025-01-01', 3000),
    (3, 3, 95000, '2025-01-01', 7000),
    (4, 4, 80000, '2025-01-01', 4000);
    (5, 5, 70000, '2025-01-01', 8000);
    (6, 6, 90000, '2025-01-01', 3000);
    (7, 7, 85000, '2025-01-01', 2000);
    (8, 8, 30000, '2025-01-01', 1000);

         +-----------+--------------+--------------+-------------+-------+
        | salary_id | employee_id  | salary_amount| salary_date | bonus |
        +-----------+--------------+--------------+-------------+-------+
        | 1         | 1            | 75000.00     | 2025-01-01  | 5000  |
        | 2         | 2            | 60000.00     | 2025-01-01  | 3000  |
        | 3         | 3            | 95000.00     | 2025-01-01  | 7000  |
        | 4         | 4            | 80000.00     | 2025-01-01  | 4000  |
        | 5         | 5            | 70000.00     | 2025-01-01  | 8000  |
        | 6         | 6            | 90000.00     | 2025-01-01  | 3000  |
        | 7         | 7            | 85000.00     | 2025-01-01  | 2000  |
        | 8         | 8            | 30000.00     | 2025-01-01  | 1000  |
        +-----------+--------------+--------------+-------------+-------+


------Inserting Data into PerformanceReviews Table--------

INSERT INTO PerformanceReviews (review_id, employee_id, review_date, performance_rating, review_comments)
VALUES
(1, 1, '2024-12-15', 'Excellent', 'Exceeded sales targets, great leadership skills.'),
(2, 2, '2024-12-10', 'Good', 'Consistently meeting HR targets, good communication.'),
(3, 3, '2024-12-05', 'Excellent', 'Exceptional skills and innovation in projects.'),
(4, 4, '2024-12-20', 'Average', 'Meets expectations but needs improvement in analysis.');
(5, 5, '2024-12-20', 'Average', 'Meets expectations but needs improvement in analysis.');
(6, 6, '2024-12-20', 'Good', 'Consistently meeting HR targets, good communication.');
(7, 7, '2024-12-20', 'xcellent', 'Meets expectations but needs improvement in analysis.');
(8, 8, '2024-12-20', 'Good', 'Meets expectations but needs improvement in analysis.');

        +-----------+--------------+-------------+------------------+-----------------------------------------------------+
        | review_id | employee_id  | review_date | performance_rating | review_comments                                      |
        +-----------+--------------+-------------+-------------------+------------------------------------------------------+
        | 1         | 1            | 2024-12-15  | Excellent         | Exceeded sales targets, great leadership skills.      |
        | 2         | 2            | 2024-12-10  | Good              | Consistently meeting HR targets, good communication. |
        | 3         | 3            | 2024-12-05  | Excellent         | Exceptional skills and innovation in projects.        |
        | 4         | 4            | 2024-12-20  | Average           | Meets expectations but needs improvement in analysis.|
        | 5         | 5            | 2024-12-20  | Average           | Meets expectations but needs improvement in analysis.|
        | 6         | 6            | 2024-12-20  | Good              | Consistently meeting HR targets, good communication. |
        | 7         | 7            | 2024-12-20  | Excellent         | Meets expectations but needs improvement in analysis.|
        | 8         | 8            | 2024-12-20  | Good              | Meets expectations but needs improvement in analysis.|
        +-----------+--------------+-------------+-------------------+------------------------------------------------------+


