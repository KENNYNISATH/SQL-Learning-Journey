-- 1. Select all columns from the employee_demographics table
SELECT * FROM parks_and_recreation.employee_demographics;

-- 2. Select specific columns and perform a calculation on the age column
SELECT first_name, 
       last_name, 
       birth_date,
       age,
       (age + 10) * 10 + 10 AS modified_age
FROM parks_and_recreation.employee_demographics;

-- 3. Select unique (distinct) combinations of first_name and gender
SELECT DISTINCT first_name, gender 
FROM parks_and_recreation.employee_demographics;
