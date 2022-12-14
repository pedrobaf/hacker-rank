*/

https://www.hackerrank.com/challenges/weather-observation-station-9/problem

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMBER     |
| LONG_W      | NUMBER     |
+-------------+------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

#SOLUTION - MYSQL

SELECT DISTINCT CITY 
FROM STATION 
WHERE 
  SUBSTRING(CITY,1,1) NOT IN ('A','E','I','O','U') 
  OR 
  SUBSTRING(CITY,1,1) NOT IN ('a','e','i','o','u')
