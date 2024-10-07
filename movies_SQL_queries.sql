-- This movies dataset contains, movies released in the year 1980 - 2001.

-- Beginner Level Questions

-- 1.	Query all columns: Write a query to retrieve all columns from the movies dataset.

SELECT *
FROM movies;

-- 2.	Filter by year: Write a query to find all movies released in 1985.

SELECT *
FROM movies
WHERE year = "1985";

-- 3.	Filter by genre: Write a query to find all movies in the "Action" genre.

SELECT *
FROM movies
WHERE genre = "Action";

-- 4.	Count movies: Write a query to count the total number of movies in the dataset.

SELECT Count(*) As Total_Movies
FROM movies;

-- 5.	Sort by rating: Write a query to sort movies by their rating in descending order.

SELECT *
FROM movies
ORDER BY score DESC;

-- 6.	Select specific columns: Write a query to retrieve the names and ratings of all movies.

SELECT name, score AS rating
FROM movies;

-- 7.	Filter by rating: Write a query to find all movies with a rating greater than 8.0.

SELECT *
FROM movies
WHERE score > 8.0;

-- 8.	Find unique genres: Write a query to list all unique genres present in the dataset.

SELECT DISTINCT genre
FROM movies;

-- 9.	Count movies by country: Write a query to count the number of movies produced in each country.

SELECT country, COUNT(*) AS movie_count
FROM movies
GROUP BY country
ORDER BY movie_count DESC;

-- 10.	Find movies with budget less than a value: Write a query to find all movies with a budget less than $1 million.

SELECT *
FROM movies
WHERE budget < 1000000;

-- Intermediate Level Questions

-- 1.	Movies with highest gross: Write a query to find the movie with the highest gross earnings.

SELECT name, gross
FROM movies
ORDER BY gross DESC
LIMIT 1;

-- 2.	Average rating by genre: Write a query to calculate the average rating for each genre.

SELECT genre, AVG(score) AS Avg_Rating
FROM movies
GROUP BY genre
ORDER BY Avg_Rating DESC;

-- 3.	Movies released after a specific year: Write a query to find all movies released after 2000.

SELECT *
FROM movies
WHERE year > 2000;

-- 4.	Sort by score: Write a query to retrieve all movies, sorted by score in ascending order.

SELECT *
FROM movies
ORDER BY score ASC;

-- 5.	Filter by director: Write a query to find all movies directed by "Christopher Nolan".

SELECT *
FROM movies
WHERE director LIKE "%Christopher Nolan%";

-- 6.	Count movies by year: Write a query to count how many movies were released each year.

SELECT year, COUNT(*) AS movies_per_year
FROM movies
GROUP BY year
ORDER BY movies_per_year DESC;

-- 7.	Find top 5 rated movies: Write a query to retrieve the top 5 movies with the highest ratings.

SELECT *
FROM movies
ORDER BY score DESC
LIMIT 5;

-- 8.	Movies with more than a specific number of votes: Write a query to find all movies that received more than average votes.

SELECT *
FROM movies
WHERE votes > (SELECT AVG(votes)
					FROM movies);

-- 9.	Find movies with a runtime within a range: Write a query to find all movies with a runtime between 90 and 120 minutes.

SELECT *
FROM movies
WHERE runtime BETWEEN 90 AND 120;

-- 10.	Movies released in a specific month: Write a query to find all movies released in January of any year.

SELECT *
FROM movies
WHERE released LIKE "%January%";

-- Advanced Level Questions

-- 1.	Movies with the highest score per genre: Write a query to find the highest score for each genre.

SELECT genre, MAX(score) AS highest_score
FROM movies
GROUP BY genre
ORDER BY highest_score DESC;

-- 2.	Average gross by country: Write a query to calculate the average gross earnings of movies by country.

SELECT 
    country, ROUND(AVG(gross), 2) AS average_gross_earnings
FROM
    movies
GROUP BY country
ORDER BY average_gross_earnings DESC;

-- 3.	Movies with budget greater than gross: Write a query to find all movies where the budget is greater than the gross earnings.

SELECT *
FROM movies
WHERE budget > gross;

-- 4.	Count of movies by director: Write a query to count how many movies each director has made.

SELECT director, COUNT(*) movies_per_director
FROM movies
GROUP BY director
ORDER BY movies_per_director DESC;

-- 5.	Filter using multiple conditions: Write a query to find movies with a rating greater than 8.0 and a budget less than $5 million.

SELECT *
FROM movies
WHERE 
	score > 8.0
	AND budget < 5000000;

-- 6.	Find the top writer: Write a query to find which writer has written the most movies in the dataset.

SELECT 
    writer,
    COUNT(*) AS total_movies
FROM
    movies
GROUP BY writer
ORDER BY total_movies DESC
LIMIT 1;

-- 7.	Group by year and genre: Write a query to count the number of movies for each genre released each year.

SELECT 
    genre,
    year,
    COUNT(*) AS total_movies
FROM
    movies
GROUP BY genre , year
ORDER BY total_movies DESC;

-- 8.	Movies with the same star: Write a query to find all movies featuring the star "Leonardo DiCaprio".

SELECT *
FROM movies
WHERE star LIKE "%Leonardo DiCaprio%";

-- 9.	Top 3 companies by gross earnings: Write a query to find the top 3 production companies by total gross earnings.

SELECT 
    company,
    SUM(gross) AS total_gross_earnings
FROM
    movies
GROUP BY company
ORDER BY total_gross_earnings DESC
LIMIT 3;

-- 10.	Filter by rating and votes more than average: Write a query to find movies which have rating and votes higher than their average

SELECT *
FROM movies
WHERE score > (SELECT AVG(score)
					FROM movies)
	AND votes > (SELECT AVG(votes)
					FROM movies)
	ORDER BY score DESC , votes DESC;