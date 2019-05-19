CREATE DATABASE cube_rollup
GO
USE cube_rollup
GO
CREATE TABLE sales
(
ID int primary key identity(1,1),
continent varchar(50),
country varchar(50),
city varchar(50),
units_sold Bigint
)
GO
INSERT INTO sales VALUES('North America', 'Canada', 'Toronto', 12572),
						('Africa', 'South Africa', 'Cape Town', 4587),
						('Africa', 'Nigeria', 'Lagos', 1300),
						('North America', 'United sates', 'Toronto', 34000),
						('Africa', 'South Africa', 'Durban', 87),
						('North America', 'United sates', 'LA', 3000),
						('Europe', 'Austria', 'Vienna', 11000),
						('Europe', 'Andorra', 'Andorra la Vela', 156000),
						('Europe America', 'Costa Rica', 'Toronto', 198000),
						('Asia', 'China', 'Beiji', 45000),
						('Asia', '	Cambodia', 'Phnom Penh', 91000),
						('Africa', 'Botswana', 'Gaborone', 400),
						('Africa', 'Central African Republic', 'Bungai', 50),
						('Oceania', 'Australia', 'Canberra', 95420),
						('Oceania', 'Fiji', 'Suva', 111000),
						('Oceania', 'New Zealand', 'Wellington', 215000)

--NB:grouping sets : ROLLUP)
SELECT continent,country, city, sum(units_sold) as Total
FROM sales
GROUP BY ROLLUP(continent, country, city)
--NB:grouping sets : CUBE)
SELECT continent,country, city, sum(units_sold) as Total
FROM sales
GROUP BY CUBE(continent, country, city)