--INNER JOIN (resultado com as colunas combinadas de ambas as tabelas)

--SQL Lesson 6 :  https://sqlbolt.com/lesson/select_queries_with_joins

--Find the domestic and international sales for each movie 

SELECT m.id,
       m.title,
       b.domestic_sales,
       b.international_sales
  from movies    m
 inner join boxoffice b on b.movie_id = m.id;

--Show the sales numbers for each movie that did better internationally rather than domestically
SELECT m.title,
       b.domestic_sales,
       b.	international_sales
  from movies m
 inner join boxoffice b on b.movie_id = m.id
 where international_sales > domestic_sales;

--List all the movies by their ratings in descending order
SELECT m.title,
       b.domestic_sales,
       b.	international_sales
  from movies m
 inner join boxoffice b on b.movie_id = m.id
 order by rating DESC;


-- LEFT / RIGHT / FULL
--SQL Lesson 7: https://sqlbolt.com/lesson/select_queries_with_outer_joins

--Find the list of all buildings that have employees
SELECT DISTINCT building 
FROM employees;

--Find the list of all buildings and their capacity
SELECT *
FROM buildings;

--List all buildings and the distinct employee roles in each building (including empty buildings) 
SELECT b.building_name,
       e.role
FROM buildings b
left join employees e on e.building = b.building_name
group by e.role, b.building_name;
