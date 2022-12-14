/*

https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:


*/

# SOLUTION - MYSQL

SELECT Country.Continent, FLOOR(AVG(City.Population))
FROM Country
INNER JOIN City
    ON Country.Code = City.CountryCode
GROUP BY Country.Continent;
