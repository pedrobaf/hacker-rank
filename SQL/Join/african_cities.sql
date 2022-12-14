/*

https://www.hackerrank.com/challenges/african-cities/problem

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

*/

# SOLUTION - MYSQL

SELECT City.Name
FROM Country
INNER JOIN City
    ON Country.Code = City.CountryCode
WHERE Country.Continent = 'Africa';
