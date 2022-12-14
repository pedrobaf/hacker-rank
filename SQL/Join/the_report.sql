/*
Problem:

https://www.hackerrank.com/challenges/the-report/problem

You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

Ketty gives Eve a task to generate a report containing three columns: 
Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. 
The report must be in descending order by grade -- i.e. higher grades are entered first. 
If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. 
Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. 
If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Note

Print "NULL"  as the name if the grade is less than 8.

*/

# SOLUTION - MYSQL

SELECT
    CASE WHEN Grade >= 8
        THEN Name
        ELSE NULL
    END,
    Grade, Marks
FROM Students
LEFT JOIN Grades
    ON Grades.Min_Mark <= Students.Marks AND Students.Marks <= Grades.Max_Mark
ORDER BY Grade DESC, Name, Marks;
