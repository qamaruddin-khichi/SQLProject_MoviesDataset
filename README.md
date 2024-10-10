# Movies Dataset SQL Project

## Table of Contents
1. [About the Project](#about-the-project)
2. [Column Description](#column-description)
3. [Purpose of Project](#purpose-of-project)
4. [Questions](#questions)
   - [Beginner Level](#beginner-level)
   - [Intermediate Level](#intermediate-level)
   - [Advanced Level](#advanced-level)
5. [SQL Code](#sql-code)
6. [Conclusion](#conclusion)

## About the Project
This project utilizes a dataset of movies, allowing you to explore and analyze movie-related data through SQL queries. The dataset contains information about movies such as their title, ratings, genres, release years, budget, and gross earnings. By answering questions at beginner, intermediate, and advanced levels, you will enhance your SQL skills and learn how to extract valuable insights from data.

## Column Description
The dataset includes the following columns:
- `name`: The title of the movie.
- `rating`: The movie's rating on a scale (e.g., IMDb rating).
- `genre`: The genre(s) of the movie (e.g., Action, Comedy, Drama).
- `year`: The year the movie was released.
- `released`: The exact release date of the movie.
- `score`: The overall score (possibly critic or audience score).
- `votes`: The number of votes received by the movie.
- `director`: The director of the movie.
- `writer`: The writer(s) of the movie.
- `star`: The lead star of the movie.
- `country`: The country where the movie was produced.
- `budget`: The production budget of the movie.
- `gross`: The movie's gross earnings.
- `company`: The production company responsible for the movie.
- `runtime`: The runtime of the movie in minutes.

## Purpose of Project
The main objectives of this project are to:
1. Practice writing SQL queries to manipulate and retrieve data from the movies dataset.
2. Answer analytical questions about movies, such as identifying top-rated films, analyzing budget vs. gross earnings, and grouping data by various attributes.
3. Gain hands-on experience in SQL skills ranging from simple queries to more complex analysis.
4. Enhance data analysis capabilities, which are essential for working with real-world datasets.

## Questions

### Beginner Level
1. **Query all columns**: Write a query to retrieve all columns from the movies dataset.
2. **Filter by year**: Write a query to find all movies released in 1985.
3. **Filter by genre**: Write a query to find all movies in the "Action" genre.
4. **Count movies**: Write a query to count the total number of movies in the dataset.
5. **Sort by rating**: Write a query to sort movies by their rating in descending order.
6. **Select specific columns**: Write a query to retrieve the names and ratings of all movies.
7. **Filter by rating**: Write a query to find all movies with a rating greater than 8.0.
8. **Find unique genres**: Write a query to list all unique genres present in the dataset.
9. **Count movies by country**: Write a query to count the number of movies produced in each country.
10. **Find movies with a budget less than a value**: Write a query to find all movies with a budget less than $1 million.

### Intermediate Level
1. **Movies with the highest gross**: Write a query to find the movie with the highest gross earnings.
2. **Average rating by genre**: Write a query to calculate the average rating for each genre.
3. **Movies released after a specific year**: Write a query to find all movies released after 2000.
4. **Sort by score**: Write a query to retrieve all movies, sorted by score in ascending order.
5. **Filter by director**: Write a query to find all movies directed by "Christopher Nolan".
6. **Count movies by year**: Write a query to count how many movies were released each year.
7. **Find top 5 rated movies**: Write a query to retrieve the top 5 movies with the highest ratings.
8. **Movies with more than a specific number of votes**: Write a query to find all movies that received more than average votes.
9. **Find movies with a runtime within a range**: Write a query to find all movies with a runtime between 90 and 120 minutes.
10. **Movies released in a specific month**: Write a query to find all movies released in January of any year.

### Advanced Level
1. **Movies with the highest score per genre**: Write a query to find the highest score for each genre.
2. **Average gross by country**: Write a query to calculate the average gross earnings of movies by country.
3. **Movies with budget greater than gross**: Write a query to find all movies where the budget is greater than the gross earnings.
4. **Count of movies by director**: Write a query to count how many movies each director has made.
5. **Filter using multiple conditions**: Write a query to find movies with a rating greater than 8.0 and a budget less than $5 million.
6. **Find the top writer**: Write a query to find which writer has written the most movies in the dataset.
7. **Group by year and genre**: Write a query to count the number of movies for each genre released each year.
8. **Movies with the same star**: Write a query to find all movies featuring the star "Leonardo DiCaprio".
9. **Top 3 companies by gross earnings**: Write a query to find the top 3 production companies by total gross earnings.
10. **Filter by rating and votes more than average**: Write a query to find movies which have rating and votes higher than their average.

## SQL Code
All the SQL queries related to the beginner, intermediate, and advanced-level questions are available in the `movies_SQL_queries.sql` file within this repository. Each query includes comments for easy understanding of the logic behind the query.

```
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
```

## Conclusion
This project demonstrates how SQL can be used to extract valuable insights from a movies dataset. By working on queries of varying difficulty, I've improved my ability to manipulate, filter, and analyze movie data, gaining insights such as top-grossing movies, highly rated films, and trends in movie production over the years. This project has helped me strengthen my SQL skills, which are essential for data analysis and reporting in many domains.
