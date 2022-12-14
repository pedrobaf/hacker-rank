/*

https://www.hackerrank.com/challenges/name-of-employees/problem

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

Column	    Type
employee_id	INTEGER
name	      STRING
months	    INTEGER
salary	    INTEGER

/*

# SOLUTION - MYSQL

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME;
