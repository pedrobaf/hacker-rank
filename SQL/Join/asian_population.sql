/*

https://www.hackerrank.com/challenges/asian-population/problem

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Input Format

The CITY and COUNTRY tables are described as follows:

City
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | Number   |
| Name        | varchar2(17)|
| CountryCode | varchar2(3) |
| District    | varchar2(20)|
| Population  | Number   |
+-------------+----------+

Country
+----------------+-------------+
| Field          | Type        |
+----------------+-------------+
| Code           | varchar2(3) |
| Name           | varchar2(44)|
| Continent      | varchar2(13)|
| Region         | varchar2(25)|
| SurfaceArea    | number      |
| IndepYear      | varchar2(5) |
| Population     | number      |
| LifeExpectancy | varchar2(4) |
| GNP            | number      |
| GNPOld         | varchar2(9) |
| LocalName      | varchar2(44)|
| GovernmentForm | varchar2(44)|
| HeadOfState    | varchar2(32)|
| Capital        | varchar2(4) |
| Code2          | varchar2(2) |
+----------------+-------------+

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

*/

# SOLUTION - MYSQL

SELECT SUM(City.population)
FROM Country
INNER JOIN City
    ON Country.Code = City.CountryCode
WHERE Country.Continent='Asia';
