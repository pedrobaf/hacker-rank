*/

https://www.hackerrank.com/challenges/weather-observation-station-10/problem

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | NUMBER     |
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
WHERE RIGHT(CITY,1) NOT IN ('a','e','i','o','u');
