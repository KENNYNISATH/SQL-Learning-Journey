-- ✅ Basic WHERE clause: match exact name
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

-- ✅ Salary filter: get employees with salary >= 50000
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

-- ✅ Filter using NOT EQUAL (!=): exclude all females
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female';

-- ✅ Filter using date condition: show employees born after Jan 1, 1985
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';

-- ✅ Combine conditions with AND: older than 1985 and not female
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
  AND gender != 'Female';

-- ✅ Combine conditions with OR and NOT: born after 1985 OR NOT male
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
  OR NOT gender = 'Male';

-- ✅ Complex logic with parentheses
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44)
   OR age > 55;

-- ✅ LIKE operator: name starts with 'Jer'
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%';

-- ✅ LIKE operator: name contains 'an'
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%an%';

-- ✅ LIKE operator: name starts with 'a' followed by 3 letters
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%';
